// http://www.websanova.com/tutorials/jquery/jquery-plugin-development-boilerplate?utm_source=javascriptweekly&utm_medium=email
// keep all your code in a closure
(function($)
{
    // provide default settings
    var Variables.Settings = {
        position    : 'mouse',
        color       : 'black'
    };

    // name your plugin - try to make it unique
    $.fn.wTooltip = function(option, settings)
    {
        // check if user is setting/getting properties manually after plugin creation
        if(typeof option === 'object')
        {
            settings = option;
        }
        else if(typeof option === 'string')
        {
            var data = this.data('_wTooltip');

            // this will check if plugin has already been initialized for this element
            if(data)
            {
                if(Variables.Settings[option] !== undefined)
                {
                    if(settings !== undefined){
                        if(option == 'title') data.content.html(settings);
                        data.settings[option] = settings;
                        return true;
                    }
                    else return data.settings[option];
                }
                else return false;
            }
            else return false;
        }

        // extend user settings with default settings
        settings = $.extend({}, Variables.Settings, settings || {});

        // iterate through all elements and return them to maintain jQuery method chaining
        return this.each(function()
        {
            var elem = $(this);

            // create copy of settings object allowing us to make individual adjustments
            // this ensures that only values for current element are changed
            var $settings = jQuery.extend(true, {}, settings);
            $settings.title = settings.title || elem.attr('title') || 'No title set';

            // create a tooltip object
            var tooltip = new Tooltip($settings);

            // we would typically run our generation code here
            tooltip.generate();

            // run some code here
            // try to keep as much of the main code in the prototype methods as possible
            // focus on just setting up the plugin and calling proper methods from here

            // store the tooltip object for later reference - setters/getters
            elem.data('_wTooltip', tooltip);
        });
    }

    // create our tooltip "class"
    // this will store the unique individual properties for each tooltip
    function Tooltip(settings)
    {
        this.tooltip = null;
        this.settings = settings;

        return this;
    }

    // prototype the tooltip class
    // this will contain methods shared amongst all tooltips
    // DO NOT keep any unique tooltip properties here
    Tooltip.prototype = 
    {
        generate: function()
        {
            // use local reference of this
            // this will be important when using in other closures like event closures
            var $this = this;

            // return the tooltip in case its already been defined for the current element 
            if($this.tooltip) return $this.tooltip;
            
            //code
        },

        someFunc: function()
        {
            //code
        }
    }
})(jQuery);
