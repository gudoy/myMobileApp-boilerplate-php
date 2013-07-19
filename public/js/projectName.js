var app = $.extend(app || {}, 
{
	init: function()
	{
		// Prepage page (sniff browser, platform, os ..., handle orientation, ...)
		this.prepare();
		
		// Init navigation
		this.nav();
		
		// Fix content with scrollable overflow if necessary
		this.fixScroll('#headerContent');
		
		// Cache the current page & its id
		this.$page = $('body').children('.page.current');
		this.pgid = this.$page.data('controller') || this.$page.attr('id') || '';
		
		// Init current page
		if ( typeof this[this.pgid] !== 'undefined' && this[this.pgid].init !== 'function' )
		{
			this[this.pgid].init.apply(this[this.pgid]); 
			this[this.pgid].inited = true;	
		}
		
		// Mark current page as loaded
		$('html').removeClass('loading');
		
		return this;
	},
	
	nav: function()
	{
		var $header = $('#header');
		
		$(document)
			.on(app.vtap, '#goToMainNavAction', function(e)
			{
				// Do not intercept right click
				if ( e.type === 'click' && e.which > 1 ){ return; }
				
				e.preventDefault();
				
				// 
				window.scrollTo(0, 1);
				
				var isActive = $header.hasClass('active');
				
				$header[ isActive ? 'removeClass' : 'addClass' ]('active');
				$body[ isActive ? 'removeClass' : 'addClass' ]('active');
			})
		
		return this;
	}
});
