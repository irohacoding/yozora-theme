# Yozora Theme

Yozora is a dark theme for GNU Emacs designed to create a relaxing atmosphere as if you were under the moon sky.

![Screenshot](screenshot.png)

## Installation

1\. Download the `yozora-theme.el` file and save it in your themes directory: `~/.emacs.d/themes/`.

2\. Add the following code to your configuration file `~/.emacs.d/init.el`:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
```
3\. Load the theme. To load the theme, type the following key command:

`M-x` `load-theme` `RET` `yozora` `RET`

(Optional) If you want to make this theme the default, add the following code to your `init.el`:

```elisp
(load-theme 'yozora t)
```

## Customization

### Change the hero (cursor) color!

1\. Type the following command:

`M-x` `customize-option` `RET` `yozora-hero-color` `RET`

2\. Change the color in the widget and click on `Apply and Save`.

3\. Type the following command to reload the theme:

`M-x` `yozora-reload` `RET`

That's it! Enjoy the Yozora theme!
