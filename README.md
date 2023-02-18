# Yozora Theme

A dark, relaxing theme for GNU Emacs as if you were under the moon sky.

![Screenshot](screenshot.png)

## Installation

1\. Download `yozora-theme.el` to your themes directory: `~/.emacs.d/themes/`

2\. Add the following code to your configuration file: `~/.emacs.d/init.el`

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
```
3\. Load the theme. Press the key below.

`M-x` `load-theme` `RET` `yozora` `RET`

(Optional) If you want to make it the default theme, add the following code to your `init.el`.

```elisp
(load-theme 'yozora t)
```

## Customization

### Change hero (cursor) color!

1\. `M-x` `customize-option` `RET` `yozora-hero-color` `RET`

2\. Change color in widget and `Apply and Save`

3\. `M-x` `yozora-reload` `RET`

Yahohoho! Enjoy this theme!!
