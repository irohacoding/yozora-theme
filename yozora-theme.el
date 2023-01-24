;;; yozora-theme.el --- A dark theme for Emacs inspired by moon sky -*- lexical-binding: t -*-

;;; Copyright (C) 2021-2023 IrohaCoding

;; Author: IrohaCoding <info@irohacoding.com>
;; Created: 2021-11-29
;; Version: 0.1.0
;; Keywords: faces
;; Package-Requires: ((emacs "27.1"))
;; Homepage: https://github.com/irohacoding/yozora-theme

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

;;; Commentary:

;; Yozora theme is a custom theme for GNU Emacs. Inspired by moon sky at night.
;; Yozora means night sky in Japanese.

;;; Code:

(deftheme yozora
  "A dark, relaxing theme for Emacs as if you were under the moon sky.")

(defgroup yozora nil
  "Yozora theme options."
  :group 'face)

(defcustom yozora-hero-color "#51bef4"
  "Color for hero."
  :tag "Hero Color"
  :type '(alist :key-type symbol :value-type string)
  :group 'yozora)

(defun yozora-reload ()
  "Reload the Yozora theme."
  (interactive)
  (disable-theme 'yozora)
  (load-theme 'yozora t))

(let* ((petal  "#252525")
       (sky    "#323232")
       (bird   "#3f3f3f")
       (insect "#696969")
       (cloud  "#878787")
       (wing   "#ececec")
       (leaf   "#cce123")
       (moon   "#f2f154")
       (star   "#eeee99")
       (meteor "#f1f1de")
       (heart  "#e5a4bf")
       (hero   (symbol-value 'yozora-hero-color)))

  (custom-theme-set-faces
   'yozora
   `(default             ((t (:foreground ,wing :background ,sky :bold nil))))
   `(cursor              ((t (:background ,hero))))
   `(escape-glyph        ((t (:foreground ,leaf))))
   `(homoglyph           ((t (:foreground ,leaf))))
   `(minibuffer-prompt   ((t (:foreground ,leaf))))
   `(highlight           ((t (:background ,petal))))
   `(region              ((t (:extend t :background ,cloud))))
   `(shadow              ((t (:foreground ,sky))))
   `(secondary-selection ((t (:extend t :background ,star))))
   `(trailing-whitespace ((t (:background ,star))))

   `(font-lock-builtin-face              ((t (:foreground ,moon))))
   `(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-comment-face
     ((((class grayscale) (background light)) (:slant italic :weight bold :foreground ,bird))
      (((class grayscale) (background dark)) (:slant italic :weight bold :foreground ,star))
      (((class color) (min-colors 88) (background light)) (:foreground ,bird))
      (((class color) (min-colors 88) (background dark)) (:foreground ,star))
      (((class color) (min-colors 16) (background light)) (:foreground ,bird))
      (((class color) (min-colors 16) (background dark)) (:foreground ,star))
      (((class color) (min-colors 8) (background light)) (:foreground ,bird))
      (((class color) (min-colors 8) (background dark)) (:foreground ,star))
      (t (:slant italic :weight bold))))
   `(font-lock-constant-face             ((t (:foreground ,leaf))))
   `(font-lock-doc-face                  ((t (:inherit (font-lock-string-face)))))
   `(font-lock-function-name-face        ((t (:foreground ,star))))
   `(font-lock-keyword-face              ((t (:foreground ,heart))))
   `(font-lock-negation-char-face        ((t nil)))
   `(font-lock-preprocessor-face         ((t (:inherit (font-lock-builtin-face)))))
   `(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   `(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face               ((t (:foreground ,star))))
   `(font-lock-type-face                 ((t (:foreground ,meteor))))
   `(font-lock-variable-name-face        ((t (:foreground ,leaf))))
   `(font-lock-warning-face              ((t (:inherit (error)))))

   `(mode-line           ((t (:foreground ,wing :background ,insect :box (:line-width -1 :color ,insect) :weight normal))))   
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-emphasis  ((t (:weight bold))))
   `(mode-line-highlight ((t (:box (:line-width 2 :color ,insect)))))
   `(mode-line-inactive  ((t (:inherit mode-line :background ,bird :foreground ,insect :weight light))))

   `(button       ((t (:inherit (link)))))
   `(link         ((t (:foreground ,star :underline t))))
   `(link-visited ((t (:inherit link :foreground ,cloud))))
   `(fringe       ((t (:background ,sky))))
   `(header-line  ((t (:inherit mode-line :background ,sky :foreground ,wing :box nil))))
   `(tooltip      ((t (:inherit variable-pitch :background ,meteor :foreground ,wing))))

   `(isearch      ((t (:background ,leaf :foreground ,wing))))
   `(isearch-fail ((((class color) (min-colors 88) (background light)) (:background ,heart))
                   (((class color) (min-colors 88) (background dark)) (:background , heart))
                   (((class color) (min-colors 16)) (:background ,heart))
                   (((class color) (min-colors 8)) (:background ,heart))
                   (((class color grayscale)) (:foreground ,cloud))
                   (t (:inverse-video t))))
   `(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background ,sky))
                     (((class color) (min-colors 88) (background dark)) (:background ,sky))
                     (((class color) (min-colors 16)) (:background ,sky))
                     (((class color) (min-colors 8)) (:background ,sky))
                     (t (:underline (:color foreground-color :style line)))))
   `(match         ((t (:background ,star))))
   `(next-error    ((t (:inherit (region)))))
   `(query-replace ((t (:inherit isearch))))

   `(web-mode-doctype-face           ((t :foreground ,cloud)))
   `(web-mode-html-tag-face          ((t :foreground ,leaf)))
   `(web-mode-html-attr-name-face    ((t :foreground ,star)))
   `(web-mode-html-attr-value-face   ((t :foreground ,heart)))
   `(web-mode-html-tag-bracket-face  ((t :foreground ,leaf)))
   `(web-mode-css-selector-face      ((t :foreground ,leaf)))
   `(web-mode-css-property-name-face ((t :foreground ,leaf)))
   `(web-mode-function-name-face     ((t :foreground ,heart)))
   `(web-mode-function-call-face     ((t :foreground ,star)))
   `(web-mode-valiable-name-face     ((t :foreground ,leaf)))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'yozora)
;;; yozora-theme.el ends here
