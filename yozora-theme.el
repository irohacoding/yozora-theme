;;; yozora-theme.el --- A dark theme for Emacs inspired by moon sky -*- lexical-binding: t -*-

;;; Copyright (C) 2021-2023 IrohaCoding.

;; This file is not part of GNU Emacs, but is distributed under
;; the same terms.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either verion 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs. If not, see <http://www.gnu.org/licenses/>.

;; Author: IrohaCoding <info@irohacoding.com>
;; URL: https://github.com/irohacoding/yozora-theme
;; Created: 2021/11/29 10:23:24
;; Version: 0.0.2
;; Keywords: faces
;; Package-Requires: ((emacs "27.1"))

;;; Commentary:
;;
;; (load-theme 'yozora t)
;;
;; Yozora theme is a custom theme for GNU Emacs. Inspired by moon sky at night.
;; Yozora means night sky in Japanese.

;;; Code:

(deftheme yozora
  "A dark, relaxing theme for Emacs as if you were under the moon sky.")

(let* ((fg     "#fffffe")
       (bg     "#323231")
       (cursor "#eaeae3")

       (black       "#232324")
       (light-gray  "#3f3f3e")
       (gray        "#cfcfce")
       (dark-gray   "#a3a3ad")
       (light-green "#92d310")
       (green       "#339900")
       (light-blue  "#a0d8ef")
       (blue        "#4fb0dd")
       (dark-blue   "#4894ad")
       (purple      "#bc64a4")
       (light-red   "#f09199")
       (red         "#ff1234")
       (dark-red    "#cc3300")
       (yellow      "#ffcc00")
       (orange      "#f6ad49")
       (brown       "#ee3a3a"))

  (custom-theme-set-faces
   'yozora
   `(default ((t (:foreground ,fg :background ,bg :bold nil))))
   `(cursor ((t (:background ,cursor))))
   `(fixed-pitch ((t (:family "Monospace"))))
   `(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
   `(escape-glyph ((t (:foreground ,brown))))
   `(homoglyph ((t (:foreground ,brown))))
   `(minibuffer-prompt ((t (:foreground ,dark-blue))))
   `(highlight ((t (:background ,black))))
   `(region ((t (:extend t :background ,dark-gray))))
   `(shadow ((t (:foreground ,dark-gray))))
   `(secondary-selection ((t (:extend t :background ,yellow))))
   `(trailing-whitespace ((t (:background ,dark-red))))

   ;;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,dark-blue))))
   `(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-comment-face
     ((((class grayscale) (background light)) (:slant italic :weight bold :foreground ,dark-gray))
      (((class grayscale) (background dark)) (:slant italic :weight bold :foreground ,gray))
      (((class color) (min-colors 88) (background light)) (:foreground ,red))
      (((class color) (min-colors 88) (background dark)) (:foreground ,orange))
      (((class color) (min-colors 16) (background light)) (:foreground ,red))
      (((class color) (min-colors 16) (background dark)) (:foreground ,red))
      (((class color) (min-colors 8) (background light)) (:foreground ,red))
      (((class color) (min-colors 8) (background dark)) (:foreground ,yellow))
      (t (:slant italic :weight bold))))
   `(font-lock-constant-face ((t (:foreground ,light-green))))
   `(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-negation-char-face ((t nil)))
   `(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
   `(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   `(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face ((t (:foreground ,brown))))
   `(font-lock-type-face ((t (:foreground ,green))))
   `(font-lock-variable-name-face ((t (:foreground ,yellow))))
   `(font-lock-warning-face ((t (:inherit (error)))))

   ;;; Mode Line
   `(mode-line ((t (:foreground ,fg :background ,black :box (:line-width -1 :color ,black) :weight normal))))   
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-emphasis ((t (:weight bold))))
   `(mode-line-highlight ((t (:box (:line-width 2 :color ,dark-gray)))))
   `(mode-line-inactive ((t (:inherit mode-line :background ,light-gray :foreground ,dark-gray :weight light))))

   ;;; Parts
   `(button ((t (:inherit (link)))))
   `(link ((t (:foreground ,blue :underline t))))
   `(link-visited ((t (:inherit link :foreground ,purple))))
   `(fringe ((t (:background ,bg))))
   `(header-line ((t (:inherit mode-line :background ,bg :foreground ,fg :box nil))))
   `(tooltip ((t (:inherit variable-pitch :background ,yellow :foreground ,fg))))

   ;;; Search
   `(isearch ((t (:background ,orange :foreground ,fg))))
   `(isearch-fail ((((class color) (min-colors 88) (background light)) (:background ,light-red))
                   (((class color) (min-colors 88) (background dark)) (:background ,dark-red))
                   (((class color) (min-colors 16)) (:background ,red))
                   (((class color) (min-colors 8)) (:background ,red))
                   (((class color grayscale)) (:foreground ,gray))
                   (t (:inverse-video t))))
   `(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background ,bg))
                     (((class color) (min-colors 88) (background dark)) (:background ,bg))
                     (((class color) (min-colors 16)) (:background ,green))
                     (((class color) (min-colors 8)) (:background ,green))
                     (t (:underline (:color foreground-color :style line)))))
   `(match ((t (:background ,yellow))))
   `(next-error ((t (:inherit (region)))))
   `(query-replace ((t (:inherit isearch))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'yozora)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; yozora-theme.el ends here
