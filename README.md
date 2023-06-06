# Yozora Theme

Yozora is a dark color theme for GNU Emacs designed to create a soothing and relaxing atmosphere as if you were looking at the night sky.

![Screenshot](screenshot.png)

## Installation

You can install the Yozora theme using the following steps:

1. Download the `yozora-theme.el` file and save it to your Emacs themes directory. The Emacs themes directory is usually `~/.emacs.d/themes/`.

2. Add the following code to your Emacs configuration file `~/.emacs.d/init.el`:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
```

This code adds the path to your Emacs themes directory to the list of locations that Emacs searches for themes.

3. Load the Yozora theme using the following command:

`M-x` `load-theme` `RET` `yozora` `RET`

This command loads the Yozora theme. Once the theme is loaded, Emacs will use Yozora's color scheme for the editor background, text, and other elements.

(Optional) If you want Yozora to be the default theme whenever Emacs starts, add the following code to your Emacs configuration file:

```elisp
(load-theme 'yozora t)
```

## Customization

You can customize the Yozora theme to your liking. Yozora provides a few customization options, including the ability to change the cursor color.

### Change the Hero (cursor) Color

The Hero is the Emacs cursor. You can change the Hero color using the following steps:

1. Type the following command:

`M-x` `customize-option` `RET` `yozora-hero-color` `RET`

This command opens the customization buffer for the `yozora-hero-color` option.

2. Change the Hero color. Adjust the color using the color picker widget.

3. Click on `Apply and Save` to finalize the change.

4. Type the following command to reload the theme:

`M-x` `yozora-reload` `RET`

This command reloads the Yozora theme with your updated Hero color.

The Yozora theme is a great option for Emacs users who want a calming and stylish theme that is easy on the eyes. Enjoy!
