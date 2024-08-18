function custom_tabs(){};

function custom_tab_options(){
	return {
		opt: {
			show_title: undefined,
			url_bar_hiding_enabled: undefined,
			share_enabled: undefined,
		},
		/// @param {bool} show True - shows the page title instead of the URL. False - shows the URL instead of page title
		show_title: function(show) {
			self.opt.show_title = show;
			return self;
		},
		/// @param {bool} enabled Whether or not to hide the URL/top bar on scroll
		url_bar_hiding_enabled: function(enabled) {
			self.opt.url_bar_hiding_enabled = enabled;
			return self;
		},
		/// @description Controls whether or not sharing is enabled
		/// @param {bool} enabled Whether or not sharing is enabled within the app
		share_enabled: function(enabled){
			opt.share_enabled = enabled;
			return self;
		},
		
		
		
		compile: function(){
			var list = ds_list_create();
			if (self.opt.show_title != undefined) {
				ds_list_add(list,self.opt.show_title ? 1 : 0);
			} else {
				ds_list_add(list,-1);
			}
			if (self.opt.url_bar_hiding_enabled) {
				ds_list_add(list,self.opt.url_bar_hiding_enabled ? 1 : 0);
			} else {
				ds_list_add(list,-1);
			}
			if (self.opt.share_enabled) {
				ds_list_add(list,self.opt.share_enabled ? 1 : 0);
			} else {
				ds_list_add(list,-1);
			}
			return list;
		}
	}
}


// start animation
// exit animation
// show title
/// @description custom_tab_open
/// @param {string} url
/// @param {struct} options
function custom_tab_open(url,options=undefined){
	var options_list = -1;
	
	if (options != undefined) {
		options_list = options.compile();
	}
	/// feather ignore once GM1041
	mobile_custom_tab_open(url,options_list);
	
	if (options != undefined) {
		ds_list_destroy(options_list);
	}
}