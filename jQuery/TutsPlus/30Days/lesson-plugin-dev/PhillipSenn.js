(function($, window, document, undefined) {
   var Twitter = {
      init: function() {
         self = this;
         this.prop = 'value';
      }
   }
   $.fn.setHeight = function(options) {
      var twitter = Object.create(Twitter);
      twitter.init(options, this);
      return this.each(function(x) { // this is referring to the jQuery object
         return $(x).height(options);
      });
   }
})(jQuery, window, document);
   