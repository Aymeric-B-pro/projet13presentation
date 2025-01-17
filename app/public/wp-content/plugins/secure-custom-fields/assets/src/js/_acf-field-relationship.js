( function ( $, undefined ) {
	var Field = acf.Field.extend( {
		type: 'relationship',

		events: {
			'keypress [data-filter]': 'onKeypressFilter',
			'change [data-filter]': 'onChangeFilter',
			'keyup [data-filter]': 'onChangeFilter',
			'click .choices-list .acf-rel-item': 'onClickAdd',
			'keypress .choices-list .acf-rel-item': 'onKeypressFilter',
			'keypress .values-list .acf-rel-item': 'onKeypressFilter',
			'click [data-name="remove_item"]': 'onClickRemove',
			'touchstart .values-list .acf-rel-item': 'onTouchStartValues',
		},

		$control: function () {
			return this.$( '.acf-relationship' );
		},

		$list: function ( list ) {
			return this.$( '.' + list + '-list' );
		},

		$listItems: function ( list ) {
			return this.$list( list ).find( '.acf-rel-item' );
		},

		$listItem: function ( list, id ) {
			return this.$list( list ).find(
				'.acf-rel-item[data-id="' + id + '"]'
			);
		},

		getValue: function () {
			var val = [];
			this.$listItems( 'values' ).each( function () {
				val.push( $( this ).data( 'id' ) );
			} );
			return val.length ? val : false;
		},

		newChoice: function ( props ) {
			return [
				'<li>',
				'<span tabindex="0" data-id="' +
					props.id +
					'" class="acf-rel-item">' +
					props.text +
					'</span>',
				'</li>',
			].join( '' );
		},

		newValue: function ( props ) {
			return [
				'<li>',
				'<input type="hidden" name="' +
					this.getInputName() +
					'[]" value="' +
					props.id +
					'" />',
				'<span tabindex="0" data-id="' +
					props.id +
					'" class="acf-rel-item acf-rel-item-remove">' +
					props.text,
				'<a href="#" class="acf-icon -minus small dark" data-name="remove_item"></a>',
				'</span>',
				'</li>',
			].join( '' );
		},

		initialize: function () {
			// Delay initialization until "interacted with" or "in view".
			var delayed = this.proxy(
				acf.once( function () {
					// Add sortable.
					this.$list( 'values' ).sortable( {
						items: 'li',
						forceHelperSize: true,
						forcePlaceholderSize: true,
						scroll: true,
						update: this.proxy( function () {
							this.$input().trigger( 'change' );
						} ),
					} );

					// Avoid browser remembering old scroll position and add event.
					this.$list( 'choices' )
						.scrollTop( 0 )
						.on( 'scroll', this.proxy( this.onScrollChoices ) );

					// Fetch choices.
					this.fetch();
				} )
			);

			// Bind "interacted with".
			this.$el.one( 'mouseover', delayed );
			this.$el.one( 'focus', 'input', delayed );

			// Bind "in view".
			acf.onceInView( this.$el, delayed );
		},

		onScrollChoices: function ( e ) {
			// bail early if no more results
			if ( this.get( 'loading' ) || ! this.get( 'more' ) ) {
				return;
			}

			// Scrolled to bottom
			var $list = this.$list( 'choices' );
			var scrollTop = Math.ceil( $list.scrollTop() );
			var scrollHeight = Math.ceil( $list[ 0 ].scrollHeight );
			var innerHeight = Math.ceil( $list.innerHeight() );
			var paged = this.get( 'paged' ) || 1;
			if ( scrollTop + innerHeight >= scrollHeight ) {
				// update paged
				this.set( 'paged', paged + 1 );

				// fetch
				this.fetch();
			}
		},

		onKeypressFilter: function ( e, $el ) {
			// Receive enter key when selecting relationship items.
			if ( $el.hasClass( 'acf-rel-item-add' ) && e.which == 13 ) {
				this.onClickAdd(e, $el);
			}
			// Receive enter key when removing relationship items.
			if ( $el.hasClass( 'acf-rel-item-remove' ) && e.which == 13 ) {
				this.onClickRemove(e, $el);
			}
			// don't submit form
			if ( e.which == 13 ) {
				e.preventDefault();
			}
		},

		onChangeFilter: function ( e, $el ) {
			// vars
			var val = $el.val();
			var filter = $el.data( 'filter' );

			// Bail early if filter has not changed
			if ( this.get( filter ) === val ) {
				return;
			}

			// update attr
			this.set( filter, val );

			if ( filter === 's' ) {
				// If val is numeric, limit results to include.
				if ( parseInt( val ) ) {
					this.set( 'include', val );
				}
			}

			// reset paged
			this.set( 'paged', 1 );

			// fetch
			if ( $el.is( 'select' ) ) {
				this.fetch();

				// search must go through timeout
			} else {
				this.maybeFetch();
			}
		},

		onClickAdd: function ( e, $el ) {
			// vars
			var val = this.val();
			var max = parseInt( this.get( 'max' ) );

			// can be added?
			if ( $el.hasClass( 'disabled' ) ) {
				return false;
			}

			// validate
			if ( max > 0 && val && val.length >= max ) {
				// add notice
				this.showNotice( {
					text: acf
						.__( 'Maximum values reached ( {max} values )' )
						.replace( '{max}', max ),
					type: 'warning',
				} );
				return false;
			}

			// disable
			$el.addClass( 'disabled' );

			// add
			var html = this.newValue( {
				id: $el.data( 'id' ),
				text: $el.html(),
			} );
			this.$list( 'values' ).append( html );

			// trigger change
			this.$input().trigger( 'change' );
		},

		onClickRemove: function ( e, $el ) {
			// Prevent default here because generic handler wont be triggered.
			e.preventDefault();

			let $span;
			// Behavior if triggered from tabbed event.
			if ( $el.hasClass( 'acf-rel-item-remove' )) {
				$span = $el;
			} else {
				// Behavior if triggered through click event.
				$span = $el.parent();
			}

			// vars
			const $li = $span.parent();
			const id = $span.data( 'id' );

			// remove value
			$li.remove();

			// show choice
			this.$listItem( 'choices', id ).removeClass( 'disabled' );

			// trigger change
			this.$input().trigger( 'change' );
		},

		onTouchStartValues: function( e, $el ) {
			$( this.$listItems( 'values' ) ).removeClass( 'relationship-hover' );
			$el.addClass( 'relationship-hover' );
		},

		maybeFetch: function () {
			// vars
			var timeout = this.get( 'timeout' );

			// abort timeout
			if ( timeout ) {
				clearTimeout( timeout );
			}

			// fetch
			timeout = this.setTimeout( this.fetch, 300 );
			this.set( 'timeout', timeout );
		},

		getAjaxData: function () {
			// load data based on element attributes
			var ajaxData = this.$control().data();
			for ( var name in ajaxData ) {
				ajaxData[ name ] = this.get( name );
			}

			// extra
			ajaxData.action = 'acf/fields/relationship/query';
			ajaxData.field_key = this.get( 'key' );
			ajaxData.nonce = this.get( 'nonce' );

			// Filter.
			ajaxData = acf.applyFilters(
				'relationship_ajax_data',
				ajaxData,
				this
			);

			// return
			return ajaxData;
		},

		fetch: function () {
			// abort XHR if this field is already loading AJAX data
			var xhr = this.get( 'xhr' );
			if ( xhr ) {
				xhr.abort();
			}

			// add to this.o
			var ajaxData = this.getAjaxData();

			// clear html if is new query
			var $choiceslist = this.$list( 'choices' );
			if ( ajaxData.paged == 1 ) {
				$choiceslist.html( '' );
			}

			// loading
			var $loading = $(
				'<li><i class="acf-loading"></i> ' +
					acf.__( 'Loading' ) +
					'</li>'
			);
			$choiceslist.append( $loading );
			this.set( 'loading', true );

			// callback
			var onComplete = function () {
				this.set( 'loading', false );
				$loading.remove();
			};

			var onSuccess = function ( json ) {
				// no results
				if ( ! json || ! json.results || ! json.results.length ) {
					// prevent pagination
					this.set( 'more', false );

					// add message
					if ( this.get( 'paged' ) == 1 ) {
						this.$list( 'choices' ).append(
							'<li>' + acf.__( 'No matches found' ) + '</li>'
						);
					}

					// return
					return;
				}

				// set more (allows pagination scroll)
				this.set( 'more', json.more );

				// get new results
				var html = this.walkChoices( json.results );
				var $html = $( html );

				// apply .disabled to left li's
				var val = this.val();
				if ( val && val.length ) {
					val.map( function ( id ) {
						$html
							.find( '.acf-rel-item[data-id="' + id + '"]' )
							.addClass( 'disabled' );
					} );
				}

				// append
				$choiceslist.append( $html );

				// merge together groups
				var $prevLabel = false;
				var $prevList = false;

				$choiceslist.find( '.acf-rel-label' ).each( function () {
					var $label = $( this );
					var $list = $label.siblings( 'ul' );

					if ( $prevLabel && $prevLabel.text() == $label.text() ) {
						$prevList.append( $list.children() );
						$( this ).parent().remove();
						return;
					}

					// update vars
					$prevLabel = $label;
					$prevList = $list;
				} );
			};

			// get results
			var xhr = $.ajax( {
				url: acf.get( 'ajaxurl' ),
				dataType: 'json',
				type: 'post',
				data: acf.prepareForAjax( ajaxData ),
				context: this,
				success: onSuccess,
				complete: onComplete,
			} );

			// set
			this.set( 'xhr', xhr );
		},

		walkChoices: function ( data ) {
			// walker
			var walk = function ( data ) {
				// vars
				var html = '';

				// is array
				if ( $.isArray( data ) ) {
					data.map( function ( item ) {
						html += walk( item );
					} );

					// is item
				} else if ( $.isPlainObject( data ) ) {
					// group
					if ( data.children !== undefined ) {
						html +=
							'<li><span class="acf-rel-label">' +
							acf.escHtml( data.text ) +
							'</span><ul class="acf-bl">';
						html += walk( data.children );
						html += '</ul></li>';

						// single
					} else {
						html +=
							'<li><span tabindex="0" class="acf-rel-item acf-rel-item-add" data-id="' +
							acf.escAttr( data.id ) +
							'">' +
							acf.escHtml( data.text ) +
							'</span></li>';
					}
				}

				// return
				return html;
			};

			return walk( data );
		},
	} );

	acf.registerFieldType( Field );
} )( jQuery );
