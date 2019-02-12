window.myplugin_js =
{
	init: function() 
	{
        console.log('js init() is called');
	},

    get: function()
    {
        console.log('js get() is called', window.location.href);
        return window.location.href;
    }

};
console.log('myplugin_js is loaded');
