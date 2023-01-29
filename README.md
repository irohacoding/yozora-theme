# yozora-theme

## About

A dark, relaxing theme for GNU Emacs as if you were under the moon sky.

![Screenshot](screenshot.png)

## Installation

Clone this repository

```bash
git clone https://github.com/irohacoding/yozora-theme.git
```

Add configure to load theme in `~/.emacs.d/init.el`

```elisp
(add-to-list 'custom-theme-load-path "path/to/yozora-theme"
(load-theme 'yozora t)
```
    
An example path/to/yozora-theme is `~/.emacs.d/themes/` and store `yozora-theme.el` here

## Customization

### Change cursor color to your hero color ;D

####  Using a mouse

1. Click `Options` in menu bar
2. Click `Customize Emacs`
3. Click `Browse Customization Groups`
4. Click `[+]` button of Group Faces
5. Click `[+]` button of Basic Faces
6. Click `Face` link of Cursor
7. Change or Choose Background color
8. Click `Apply and Save`

#### Using a keyboard

`M-x` is pressing the x key while holding down the Alt key.

1. Press `M-x`
2. Input *customize-face* in minibuffer
3. PRESS `Return`
4. Input *cursor* in minibuffer
5. PRESS `Return`
6. Change or Choose Background color
7. Press `Return` on the `Apply and Save` button

## License

Distributed under the GNU General Public License, version 3
