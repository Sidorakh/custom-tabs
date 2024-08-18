/// @description 
if (mouse_check_button_pressed(mb_left)) {
	var opt = custom_tab_options();
	opt.show_title(true);
	opt.share_enabled(true);
	opt.url_bar_hiding_enabled(true);
	custom_tab_open("https://gamemaker.io",opt);
}