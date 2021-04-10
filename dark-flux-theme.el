;;; dark-flux-theme.el --- Dark Green theme.
;; Copyright (C) 2019 , David Dominguez

;; Author: David Dominguez
;; https://github.com/daviddominguez-ddl
;; Version: 1.0

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(deftheme dark-flux "DarkGreen background theme by Dave")

(let ((class '((class color) (min-colors 89))))     
  (custom-theme-set-faces
   'dark-flux
   `(default ((,class (:background ,"#01090c" :foreground ,"#339999"))))
   ;;font Lock mode 
   `(font-lock-builtin-face ((,class (:foreground ,"#98f5ff" :weight bold))))
   `(font-lock-comment-face ((,class (:foreground ,"#005656" :italic t))))
   `(font-lock-negation-char-face ((,class (:foreground ,"#73e500"))))
   `(font-lock-reference-face ((,class (:foreground ,"#b0c4de"))))
   `(font-lock-constant-face ((,class (:foreground ,"#b7882c"))))
   `(font-lock-doc-face ((,class (:foreground ,"#c1cdc1"))))
   `(font-lock-function-name-face ((,class (:foreground ,"#00bfff"))))
   `(font-lock-keyword-face ((,class (:foreground ,"#c1ffc1" :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,"#7fffd4"))))
   `(font-lock-type-face ((,class (:foreground ,"#ffa298" ))))
   `(font-lock-variable-name-face ((,class (:foreground ,"#98f5ff"))))
   `(font-lock-warning-face ((,class (:foreground ,"#e3473f" :weight bold))))
   ;;
   `(region ((,class (:foreground ,"#01090c" :background ,"#aacfd1"))))
   `(highlight ((,class (:foreground ,"#00d0cf" :background ,"#005656" :weight bold))))
   `(hl-line ((,class (:background "#12242b" :weight bold ))))
   `(fringe ((,class (:background ,"#111113"))))
   `(cursor ((,class (:background ,"#eb5531"))))
   `(show-paren-match ((,class (:foreground ,"black" :background ,"#ffd700"))))
   `(isearch ((,class (:bold t :foreground ,"#121c21" :background ,"#009388" :weight bold))))
   `(vertical-border ((,class (:foreground ,"#666666"))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,"#005656"))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:underline t :foreground "#a6eee7" :inherit fixed-pitch))))
   `(link-visited ((,class (:foreground ,"#b8b8b8" :underline t))))
   ;; linum mode
   `(linum ((,class (:height 95 :weight normal :box nil :foreground ,"#07e5bd"))))
   ;; mode line
   `(mode-line ((,class (:box (:line-width 1 :color "#003731")
			      :foreground "#00b59c"
			      :background "#041e1c"
			      :height 0.95
			      :inherit fixed-pitch))))
	`(mode-line-inactive ((,class (:box (:line-width 1 :color "#111113")
					    :foreground "#717171"
					    :background "#111113"
					    :height 0.95
					    :inherit fixed-pitch))))
	`(mode-line-buffer-id ((,class (:foreground ,"#00b59c" :underline t :weight bold))))
	`(mode-line-emphasis ((,class (:weight bold :foreground ,"#e5e5e5"))))
	`(mode-line-highlight ((,class (:foreground "#efecc5"))))
	;; vc-mode-line
	`(vc-state-faces ((,class (:foreground "#cdc673"))))
	`(vc-state-base ((,class (:foreground ,"#339999"))))
	`(vc-edited-state ((,class (:foreground "#ff874a"))))
	`(vc-locked-state ((,class (:foreground ,"#8b3a3a"))))
	;; dired
	`(dired-header ((,class (:foreground ,"#90faa4"))))
	`(dired-directory ((,class (:foreground ,"#40e0d0" :weight bold ))))
	`(dired-ignored ((,class (:strike-through t :foreground, "#707070"))))
	`(dired-marked ((,class (:foreground ,"#efecc5" :background ,"#2c2c2c"))))
	`(dired-symlink ((,class (:foreground ,"deep sky blue"))))
	;; ivy
	`(ivy-current-match ((,class (:foreground ,"#00d0cf" :background ,"#121c21"))))
	`(ivy-minibuffer-match-face-1 ((,class (:foreground ,"#006400"))))
	`(ivy-minibuffer-match-face-2 ((,class (:foreground ,"#419edb" :weight bold))))
	`(ivy-minibuffer-match-face-3 ((,class (:foreground ,"#aa7941"))))
	`(ivy-minibuffer-match-face-4 ((,class (:foreground ,"#ff4040"))))
	`(ivy-match-required-face ((,class (:foreground ,"#ffa298" :background ,"#5f5f5f" :weight bold))))
	`(ivy-modified-buffer ((,class (:foreground ,"#ffa298"))))
	`(ivy-remote ((,class (:foreground ,"#00bfff"))))
	`(ivy-highlight-face ((,class (:foreground ,"#98f5ff" :weight bold))))
	;; org-mode
        `(org-level-1 ((,class (:bold t :foreground "#2f4f4f" :height 1.2))))
        `(org-level-2 ((,class (:bold t :foreground "#efecc5" :height 1.1))))
        `(org-level-3 ((,class (:bold t :foreground "#a6eee7" :height 1.0))))
        `(org-level-4 ((,class (:bold t :foreground "#ff7d3a" :height 1.0))))
        `(org-date ((,class (:foreground ,"#00f5ff" :inherit fixed-pitch))))
        `(org-link ((,class (:underline t :foreground "#a6eee7" :inherit fixed-pitch))))
	`(org-table ((,class (:foreground ,"#005656" :inherit fixed-pitch))))
	`(org-special-keyword ((,class (:foreground "#3cb371" :inherit fixed-pitch))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
	`(org-code ((,class (:foreground ,"#717171" :inherit fixed-pitch))))
	`(org-verbatim ((,class (:foreground ,"#686b84"))))
        `(org-todo ((,class (:box (:line-width 1 :color "#eb5531")
				  :foreground "#eb5531"
				  :background "#6b3527"
				  :weight bold
				  :height 0.95
				  :inherit fixed-pitch))))
        `(org-done ((,class (:box (:line-width 1 :color "#3bb8c5")
				  :foreground "#3bbbc5"
				  :background "#253236"
				  :weight bold
				  :height 0.95
				  :inherit fixed-pitch))))
        `(org-agenda-structure ((,class (:foreground "#009388" :weight light :height 1.7))))
        `(org-agenda-date ((,class (:foreground ,"#005656"))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,"#2f4f4f"))))
        `(org-agenda-date-today ((,class (:weight normal :foreground ,"#b8b8b8" :height 1.2))))
        `(org-agenda-done ((,class (:foreground ,"#63747c"))))
	`(org-agenda-clocking ((,class (:foreground ,"#009388" :background ,"#121c21"))))
	`(org-agenda-column-dateline ((,class (:height 1.0
						       :slant normal
						       :underline nil
						       :strike-through nil
						       :foreground "#e6ad4f"
						       :background "#fff2de"))))
	`(org-agenda-current-time ((,class (:underline t :foreground ,"#009388"))))
	`(org-scheduled ((,class (:foreground ,"#7fffd4"))))
        `(org-scheduled-today ((,class (:foreground ,"#98f5ff"))))
	`(org-document-info ((,class (:foreground ,"#005656"))))
	`(org-document-info-keyword ((,class (:foreground ,"#7f7f7f" :inherit fixed-pitch))))
	`(org-document-title ((,class (:foreground ,"#339999" :weight bold :height 1.5))))
	`(org-block ((,class (:foreground "#37a9b7"
					  :background "#041015"
					  :height 0.95
					  :inherit fixed-pitch ))))
	`(org-block-begin-line ((,class (:foreground "#008b8b"
						     :background "#041015"
						     :height 0.95
						     :weight bold
						     :inherit fixed-pitch))))
	`(org-block-end-line ((,class (:foreground "#008b8b"
						   :background "#041015"
						   :height 0.95
						   :weight bold
						   :inherit fixed-pitch))))
	`(org-meta-line ((,class (:foreground "#f27d3a" :inherit fixed-pitch))))
	`(org-checkbox ((,class (:box (:line-width 1 :style pressed-button)
				      :foreground "#000000"
				      :background "#d3d3d3" ))))
	`(org-tag ((,class (:box (:color "#54b768" :inherit default)
				 :foreground "#ced3d1"
				 :background "#3a5147" ))))
	`(org-mode-line-clock ((,class (:box (:line-width 1 :style pressed-button)
					     :foreground ,"#00d0cf"
					     :background ,"#005656"))))
	`(org-mode-line-clock-overrun ((,class (:box (:line-width 1 :style pressed-button)
						     :foreground ,"#bfbfbf"
						     :background ,"brown4"))))
	;; eshell
	`(eshell-prompt ((,class (:foreground ,"#005656" :weight bold))))
	`(eshell-ls-directory ((,class (:foreground ,"#40e0d0" :weight bold))))
	`(eshell-ls-symlink ((,class (:foreground ,"#b7882c" :weight normal ))))
	`(eshell-ls-executable ((,class (:foreground ,"#04f97f" :weight bold))))
	`(eshell-ls-backup ((,class (:strike-through t :foreground ,"#404040"))))
	;; latex
	`(font-latex-bold-face ((,class (:foreground ,"#339999"))))
	`(font-latex-italic-face ((,class (:foreground ,"#98f5ff" :italic t))))
	`(font-latex-string-face ((,class (:extforeground ,"#7fffd4"))))
	`(font-latex-match-reference-keywords ((,class (:foreground ,"#a6eee7"))))
	`(font-latex-match-variable-keywords ((,class (:foreground ,"#98f5ff"))))
	;; gnu
	`(gnus-header-content ((,class (:foreground ,"#b8b8b8"))))
	`(gnus-header-from ((,class (:foreground ,"#98f5ff"))))
	`(gnus-header-name ((,class (:foreground ,"#339999"))))
	`(gnus-header-subject ((,class (:foreground ,"#c1cdc1" :bold t))))	
	;; markdown
	`(markdown-header-face-1 ((,class (:foreground "#cccccc" :height 1.6 :bold t))))
	`(markdown-header-face-2 ((,class (:foreground "#cccccc" :height 1.5 :bold t))))
	`(markdown-header-face-3 ((,class (:foreground "#cccccc" :height 1.4 :bold t))))
	`(markdown-header-face-4 ((,class (:foreground "#cccccc" :height 1.4 :bold t))))
	`(markdown-header-face-5 ((,class (:foreground "#cccccc" :height 1.4 :bold t))))
	`(markdown-header-face-6 ((,class (:foreground "#cccccc" :height 1.4 :bold t))))
	`(markdown-markup-face ((,class (:foreground ,"#3a5ca6"))))
	`(markdown-metadata-key-face ((,class (:foreground ,"#777777"))))
	`(markdown-language-keyword-face ((,class (:foreground ,"#cccccc"))))
	`(markdown-list-face ((,class (:foreground ,"#5082f7"))))
	`(markdown-header-delimiter-face ((,class (:foreground "#5082f7" :height 1.6 :bold t))))
	`(markdown-header-rule-face ((,class (:foreground "#5082f7" :height 1.6 :bold t))))
	`(markdown-pre-face ((,class (:foreground "#00faa0" :background "#000000" :inherit fixed-pitch))))
	`(markdown-code-face ((,class (:foreground "#54ff9f" :inherit fixed-pitch))))
	`(markdown-url-face ((,class (:foreground "#f0c981"))))
	`(markdown-header-delimiter-face ((,class (:foreground ,"#c1cdc1"))))
 	;; web-mode
	`(web-mode-builtin-face ((,class  (:foreground ,"#7a554a"))))
	`(web-mode-constant-face ((,class (:foreground ,"#008acb"))))
	`(web-mode-keyword-face ((,class (:foreground ,"#c0caa5"))))
	`(web-mode-doctype-face ((,class (:foreground ,"#fb3e90"))))
	`(web-mode-function-name-face ((,class (:foreground ,"#8eafc3" :weight bold))))
	`(web-mode-string-face ((,class (:foreground ,"#7fffd4"))))
	`(web-mode-type-face ((,class (:foreground ,"#ffa298"))))
	`(web-mode-html-tag-face ((,class (:foreground ,"#8b8989" :weight bold))))
	`(web-mode-html-attr-name-face ((,class (:foreground ,"#289897"))))
	`(web-mode-html-attr-value-face ((,class (:foreground ,"#7fffd4"))))
	`(web-mode-warning-face ((,class (:foreground ,"#e3473f"))))
	;;neotree
	`(neo-root-dir-face ((,class ( :foreground ,"#a6eee7" :weight bold :height 0.95 :inherit variable-pitch))))
	`(neo-dir-link-face ((,class ( :foreground ,"#339999" :weight bold :height 0.95 :inherit variable-pitch))))
	`(neo-file-link-face ((,class (:foreground ,"#8b8989" :height 0.95 :inherit variable-pitch))))
	;;power-line
	`(powerline-active1 ((,class (:foreground ,"#98f5ff" :background ,"#01090c"))))
	`(powerline-active2 ((,class (:foreground ,"#98f5ff" :background ,"#01090c"))))
	`(powerline-inactive1 ((,class (:foreground "#474747" :background "#000000"))))
	`(powerline-inactive2 ((,class (:foreground "#474747" :background "#000000"))))
	;; company
	`(company-tooltip ((,class (:foreground ,"#289897" :background ,"#111113"))))
	`(company-tooltip-selection ((,class (:foreground ,"#98f5ff"))))
	`(company-tooltip-common ((,class (:foreground "#eb5531"))))
	`(company-scrollbar-bg ((,class (:background ,"#01090c" ))))
	`(company-scrollbar-fg ((,class (:background ,"#005656"))))
	`(company-preview ((,class (:foreground ,"#b0c4de" :background ,"#2f4f4f"))))
	`(company-preview-common ((,class (:foreground "#40e0d0" ))))
	))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
(provide-theme 'dark-flux)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; dark-flux-theme.el ends here
