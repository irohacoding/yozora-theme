;;; yozora-theme.el --- A dark theme for Emacs inspired by moon sky -*- lexical-binding: t -*-

;; Copyright (C) 2021-2023 IrohaCoding

;; Author: IrohaCoding <info@irohacoding.com>
;; Created: 2021-11-29
;; Version: 0.6.2
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
  "Yozora theme options.
The theme has to be reloaded after changing anything in this group."
  :group 'faces)

(defcustom yozora-hero-color "#00bfff"
  "Color for hero (cursor)."
  :type 'string
  :group 'yozora)

(defun yozora-reload ()
  "Reload the Yozora theme."
  (interactive)
  (disable-theme 'yozora)
  (load-theme 'yozora t))

(let ((yozora-petal  "#262524")
      (yozora-sky    "#333130")
      (yozora-bird   "#4d4948")
      (yozora-insect "#666160")
      (yozora-cloud  "#807978")
      (yozora-wing   "#f8f4e6")
      (yozora-meteor "#66cdaa")
      (yozora-leaf   "#b8d200")
      (yozora-star   "#ebd842")
      (yozora-moon   "#ffd700")
      (yozora-lamp   "#f6ad49")
      (yozora-heart  "#f08080")
      (yozora-aurora "#895b8a"))

  (custom-theme-set-faces
   'yozora
   `(default             ((t (:foreground ,yozora-wing :background ,yozora-sky :bold nil))))
   `(cursor              ((t (:background ,yozora-hero-color))))
   `(escape-glyph        ((t (:foreground ,yozora-leaf))))
   `(homoglyph           ((t (:foreground ,yozora-leaf))))
   `(minibuffer-prompt   ((t (:foreground ,yozora-leaf))))
   `(highlight           ((t (:foreground ,yozora-wing :background ,yozora-petal))))
   `(region              ((t (:extend t :background ,yozora-cloud))))
   `(shadow              ((t (:foreground ,yozora-meteor))))
   `(secondary-selection ((t (:extend t :foreground ,yozora-bird :background ,yozora-star))))
   `(trailing-whitespace ((t (:foreground ,yozora-bird :background ,yozora-star))))
   `(linum               ((t (:foreground ,yozora-wing :background ,yozora-bird))))
   `(hl-line             ((t (:background ,yozora-petal))))

   `(whitespace-newline     ((t (:foreground ,yozora-insect))))
   `(whitespace-space       ((t (:foreground ,yozora-insect))))
   `(whitespace-tab         ((t (:foreground ,yozora-insect :background ,yozora-bird))))
   `(whitespace-indentation ((t (:foreground ,yozora-heart :background ,yozora-bird))))

   `(show-paren-match            ((t (:foreground ,yozora-bird :background ,yozora-star))))
   `(show-paren-match-expression ((t (:background ,yozora-cloud))))
   `(show-paren-mismatch         ((t (:background ,yozora-heart))))

   `(font-lock-builtin-face              ((t (:foreground ,yozora-moon))))
   '(font-lock-comment-delimiter-face    ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-comment-face              ((t (:foreground ,yozora-cloud))))
   `(font-lock-constant-face             ((t (:foreground ,yozora-leaf))))
   '(font-lock-doc-face                  ((t (:inherit (font-lock-string-face)))))
   `(font-lock-function-name-face        ((t (:foreground ,yozora-star))))
   `(font-lock-keyword-face              ((t (:foreground ,yozora-heart))))
   '(font-lock-negation-char-face        ((t nil)))
   '(font-lock-preprocessor-face         ((t (:inherit (font-lock-builtin-face)))))
   '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face               ((t (:foreground ,yozora-star))))
   `(font-lock-type-face                 ((t (:foreground ,yozora-meteor))))
   `(font-lock-variable-name-face        ((t (:foreground ,yozora-leaf))))
   `(font-lock-warning-face              ((t (:foreground ,yozora-lamp :weight bold))))

   `(mode-line ((t (:foreground ,yozora-wing :background ,yozora-insect
                                :box (:line-width -1 :color ,yozora-insect) :weight normal))))
   '(mode-line-buffer-id ((t (:weight bold))))
   '(mode-line-emphasis  ((t (:weight bold))))
   `(mode-line-highlight ((t (:box (:line-width 2 :color ,yozora-petal)))))
   `(mode-line-inactive  ((t (:inherit mode-line :background ,yozora-bird :foreground ,yozora-insect :weight light))))
   `(vertical-border     ((t (:foreground ,yozora-insect))))

   '(button       ((t (:inherit (link)))))
   `(link         ((t (:foreground ,yozora-star :underline t))))
   `(link-visited ((t (:inherit link :foreground ,yozora-cloud))))
   `(fringe       ((t (:background ,yozora-sky))))
   `(header-line  ((t (:inherit mode-line :background ,yozora-sky :foreground ,yozora-wing :box nil))))
   `(tooltip      ((t (:inherit variable-pitch :background ,yozora-meteor :foreground ,yozora-bird))))

   `(isearch          ((t (:background ,yozora-leaf :foreground ,yozora-bird))))
   `(isearch-fail     ((t (:foreground ,yozora-bird :background ,yozora-heart))))
   `(lazy-highlight   ((t (:background ,yozora-sky))))
   `(match            ((t (:foreground ,yozora-bird :background ,yozora-moon))))
   '(next-error       ((t (:inherit (region)))))
   '(query-replace    ((t (:inherit isearch))))
   `(info-index-match ((t (:background ,yozora-bird))))

   `(dired-directory ((t (:foreground ,yozora-moon, :background ,yozora-bird))))
   `(dired-header    ((t (:foreground ,yozora-moon, :background ,yozora-bird))))
   `(dired-flagged   ((t (:foreground ,yozora-heart :weight bold))))
   `(dired-mark      ((t (:foreground ,yozora-heart :weight bold))))

   `(ivy-current-match           ((t (:foreground ,yozora-wing :background ,yozora-aurora))))
   `(ivy-minibuffer-match-face-1 ((t (:foreground ,yozora-wing :background ,yozora-cloud))))
   `(ivy-minibuffer-match-face-2 ((t (:foreground ,yozora-wing :background ,yozora-insect))))
   `(ivy-minibuffer-match-face-3 ((t (:foreground ,yozora-wing :background ,yozora-bird))))
   `(ivy-minibuffer-match-face-4 ((t (:foreground ,yozora-wing :background ,yozora-petal))))

   `(web-mode-doctype-face           ((t (:foreground ,yozora-cloud))))
   `(web-mode-html-tag-face          ((t (:foreground ,yozora-moon))))
   `(web-mode-html-tag-bracket-face  ((t (:foreground ,yozora-moon))))
   `(web-mode-html-attr-name-face    ((t (:foreground ,yozora-star))))
   `(web-mode-html-attr-value-face   ((t (:foreground ,yozora-heart))))
   `(web-mode-css-selector-face      ((t (:foreground ,yozora-leaf))))
   `(web-mode-css-property-name-face ((t (:foreground ,yozora-star))))
   `(web-mode-function-name-face     ((t (:foreground ,yozora-heart))))
   `(web-mode-function-call-face     ((t (:foreground ,yozora-star))))
   `(web-mode-valiable-name-face     ((t (:foreground ,yozora-leaf))))

   `(org-meta-line      ((t (:foreground ,yozora-cloud))))
   `(org-document-title ((t (:foreground ,yozora-wing :weight bold))))
   `(org-document-info  ((t (:foreground ,yozora-wing))))
   `(org-todo           ((t (:foreground ,yozora-heart :weight bold))))
   `(org-done           ((t (:foreground ,yozora-star :weight bold))))
   `(org-priority       ((t (:foreground ,yozora-star))))
   `(org-date           ((t (:foreground ,yozora-leaf))))
   `(org-table          ((t (:foreground ,yozora-meteor))))
   `(org-level-1        ((t (:foreground ,yozora-moon))))
   `(org-level-2        ((t (:foreground ,yozora-star))))
   `(org-level-3        ((t (:foreground ,yozora-meteor))))
   `(org-level-4        ((t (:foreground ,yozora-leaf))))
   `(org-level-5        ((t (:foreground ,yozora-heart))))
   `(org-level-6        ((t (:foreground ,yozora-aurora))))
   `(org-level-7        ((t (:foreground ,yozora-wing))))
   `(org-level-8        ((t (:foreground ,yozora-cloud))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'yozora)

;;; yozora-theme.el ends here
