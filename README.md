# Custom Tabs
Use Androids Custom Tabs in GameMaker games!

## Installation
1. If you have an older version of CustomT abs installed in GM, delete the CustomT abs folder in the IDE
2. Download the latest YYMPS file from [Releases](https://github.com/Sidorakh/custom-tabs/releases)
3. Drag it into the IDE
4. Import at least `ext_custom_tabs` and `scr_custom_tabs`

## Functions

### `custom_tab_open(url,[options])`
Opens a URL in a custom tab, applying any options provided

Parameters:
Parameter | Type | Description
 - | - | - 
url | String | The URL to open
options | Struct.custom_tab_options | (Optional) Options for the custom tab

Returns: None

---
### `custom_tab_options()`
Creates an options struct for use with `custom_tab_open`
Parameters: None
Returns: `Struct.custom_tab_options`

---

### struct.custom_tab_options
A struct that can be used to set options for use with `custom_tab_open`
Methods:
#### custom_tab_options.show_title(show)
Whether or not the page title should be shown. If false, the URL is shown instead
Parameters: 

Parameter | Type | Description
 - | - | -
show | Boolean | Whether or not the page URL should be shown

#### custom_tab_options.url_bar_hiding_enabled(enabled)
Whether or not to hide the URL/top bar on scroll

Parameter | Type | Description
 - | - | -
enabled | Boolean | Whether or not to hide the URL/top bar on scroll

#### custom_tab_options.share_enabled(enabled)
Whether or not to show the share button in the custom tab. If unset, will use an os level default

Parameter | Type | Description
 - | - | -
enabled | Boolean | Whether or not to show the share button





## Basic Usage
```js
// Open the GameMaker website in a custom tab
custom_tab_open("https://gamemaker.io");
```

## Advanced usage
```js
// Show the page URL, enable the share buttton and hide the URL bar on scroll
// And then open the website for a really cool game engine
var opt = custom_tab_options().show_title(true).share_enabled(true).#### url_bar_hiding_enabled(true);
custom_tab_open("https://gamemaker.io",opt);


```