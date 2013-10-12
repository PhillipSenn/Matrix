(function( $, window, document, undefined ) {
   $.fn.setHeight = function( val ) {
      return this.css( 'height', val );
   };
})( jQuery, window, document );

$('p').setHeight( 200 ); 