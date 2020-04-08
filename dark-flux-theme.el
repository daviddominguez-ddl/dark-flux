;;; dark-flux-theme.el --- Emacs theme with a dark background.

;; Copyright (C) 2019 , David Dominguez

;; Author: David Dominguez
;; https://github.com/daviddominguez-ddl
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Version: 1.0.12

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

 (deftheme dark-flux)
 (let ((class '((class color) (min-colors 89)))
       (default "#74fe53")
       (background   "#1c2124")
       (light-green  "#e5fcc2")
       (dark-green   "#458b00")
       (lime-green   "#99ff33")
       (slate-gray   "#b3b3b3")
       (light-gray   "#bdc3ce")
       (dark-gray    "#63747c")
       (light-purple "#686b84")
       (dark-purple  "#373949")
       (gray "#cccccc")
       (red  "#ff5f5f")
       (cyan "#a6eee7")
       (blue "#63a9dd")
       (green   "#008b45")
       (purple  "#bd85f7")
       (keyword "#b2ff66")
       (const   "#73e500")
       (warning "#ff3c45")
       (ol1 '(:bold t :foreground "#79bd9a" :height 1.2))
       (ol2 '(:bold t :foreground "#a8dba8" :height 1.1))
       (ol3 '(:bold t :foreground "#3b8686" :height 1.0))
       (ol4 '(:bold t :foreground "#0b486b" :height 1.0))
       (todo '(:box (:line-width 1 :color "#c688f7") :foreground "#c688f7" :background "#302b57" :bold t))
       (done '(:box (:line-width 1 :color "#68fe53") :foreground "#68fe53" :background "#253236" :bold t))
       (agenda-struct '(:foreground "#00df47" :weight bold :box (:color "#686b84") :height 1.4))
       (check '(:foreground "#000000" :background "#d3d3d3" :box (:line-width 1 :style pressed-button)))
       (code '(:foreground "#a6eee7" :background "#0f1611"))
       (block '( :foreground "#6df995" :background "#1a4028" :weight bold))
       (tag '(:foreground "#ced3d1" :background "#3a5147" :weight normal :box (:color "#54b768")))
       (org-meta '(:foreground "#351b12" :background "#bdC3cd" :slant normal))
       (md-h1 '(:foreground "#e0dfc2" :height 1.6 :weight bold))
       (md-h2 '(:foreground "#e0dfc2" :height 1.4 :weight bold :underline t ))
       (md-pre-bg '(:foreground "#9ffe6d" :background "#234c12"))
       (md-header '(:foreground "#7f7f7f"))
       (contrast-green '(:foreground "#9ffe6d" :background "#1a4028" :weight normal))
       (link '(:underline t :foreground "#50e99c"))
       (modeline '(:box (:line-width 4 :color "#0e1819") :foreground "#e5fcc2" :background "#0e1819"))
       (modeline-inactive '(:box (:line-width 4 :color "#1c2124") :foreground "#616161" :background "#1c2124")))
     
   (custom-theme-set-faces
   'dark-flux
        `(default ((,class (:background ,background :foreground ,default))))
        `(font-lock-builtin-face ((,class (:foreground ,cyan))))
        `(font-lock-comment-face ((,class (:foreground ,dark-gray :weight light))))
	`(font-lock-negation-char-face ((,class (:foreground ,const))))
	`(font-lock-reference-face ((,class (:foreground ,keyword))))
	`(font-lock-constant-face ((,class (:foreground ,light-gray :bold t))))
        `(font-lock-doc-face ((,class (:foreground ,cyan))))
        `(font-lock-function-name-face ((,class (:foreground ,lime-green :bold t))))
        `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
        `(font-lock-string-face ((,class (:foreground ,light-green))))
        `(font-lock-type-face ((,class (:foreground ,default ))))
        `(font-lock-variable-name-face ((,class (:foreground ,light-gray))))
        `(font-lock-warning-face ((,class (:foreground ,warning :background ,dark-purple))))
        `(region ((,class (:background ,light-gray :foreground ,background))))
        `(highlight ((,class (:foreground ,"#000000" :background ,blue :weight bold))))
	`(hl-line ((,class (:background  ,dark-purple))))
	`(fringe ((,class (:background ,"#0e1819"))))
	`(cursor ((,class (:foreground ,warning :background ,warning))))
        `(show-paren-match-face ((,class (:background ,warning))))
        `(isearch ((,class (:bold t :foreground ,"#000000" :background ,"#00f900" :weight bold))))
		
	;; border
	`(vertical-border ((,class (:foreground ,default))))
        `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
        `(default-italic ((,class (:italic t))))

	;; link faces
        `(link ((,class ,link)))
	`(link-visited ((,class (:foreground ,keyword :underline t))))
	
	;; linum
	`(linum ((,class (:height 100 :weight normal :box nil :foreground ,lime-green))))
	
	;; mode-line
	`(mode-line ((,class ,modeline)))
	`(mode-line-inactive ((,class ,modeline-inactive)))
	`(mode-line-buffer-id ((,class (:weight bold :foreground ,light-green))))
	`(mode-line-emphasis ((,class (:weight bold :foreground ,light-green))))
	`(mode-line-highlight ((,class (:foreground "#fefb00"))))
	
	;; dired
	`(dired-header ((,class ,md-pre-bg)))
	`(dired-directory ((,class (:foreground ,cyan :weight bold ))))
	`(dired-ignored ((,class (:strike-through t :foreground, dark-green))))
	`(dired-mark ((,class (:foreground ,slate-gray :background ,dark-green))))
	`(dired-marked ((,class (:foreground ,light-gray :background ,dark-green))))
	`(dired-symlink ((,class (:foreground ,dark-green :weight bold :height 0.9))))
	
	;; popup
	`(popup-face ((,class ,contrast-green)))
	`(popup-scroll-bar-background-face ((,class (:background ,cyan ))))
	`(popup-scroll-bar-foreground-face ((,class (:background ,dark-gray ))))
	`(popup-menu-selection-face ((,class (:foreground ,"#282b3c" :background ,lime-green :weight bold))))
	`(popup-menu-mouse-face ((,class (:foreground "#181818" :background "#a1b56c" :height 0.9))))
	
	;; ivy
	`(ivy-current-match ((,class ,block)))
	`(ivy-minibuffer-match-face-1 ((,class (:foreground ,green))))
	`(ivy-minibuffer-match-face-2 ((,class (:foreground ,keyword :weight bold))))  
	`(ivy-minibuffer-match-face-3 ((,class (:foreground ,light-green))))
	`(ivy-minibuffer-match-face-4 ((,class (:foreground ,light-green))))
	`(ivy-match-required-face ((,class (:foreground ,red :background ,"#5f5f5f" :weight bold))))
	`(ivy-modified-buffer ((,class (:foreground ,red))))
	`(ivy-remote ((,class (:foreground ,blue))))
	`(ivy-highlight-face ((,class (:foreground ,blue :weight bold))))
	
	;;org-mode
	`(org-code ((,class (:foreground ,light-purple ))))
	`(org-hide ((,class (:foreground ,light-purple))))
        `(org-level-1 ((,class ,ol1)))
        `(org-level-2 ((,class ,ol2)))
        `(org-level-3 ((,class ,ol3)))
        `(org-level-4 ((,class ,ol4)))
        `(org-date ((,class (:underline t :foreground ,cyan) )))
        `(org-footnote  ((,class (:underline t :foreground ,light-purple))))
        `(org-link ((,class ,link)))
	`(org-table ((,class (:foreground ,"#6df995" :background "#0f1611"))))
        `(org-special-keyword ((,class (:foreground ,gray))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
        `(org-todo ((,class ,todo)))
        `(org-done ((,class ,done)))
        `(org-warning ((,class (:underline t :foreground ,warning))))
        `(org-agenda-structure ((,class ,agenda-struct)))
        `(org-agenda-date ((,class (:foreground ,"#2a6a7d"))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,"#aa7941"))))
        `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.3))))
        `(org-agenda-done ((,class (:foreground ,dark-gray))))
	`(org-scheduled ((,class (:foreground ,light-green))))
        `(org-scheduled-today ((,class (:foreground ,gray :weight bold))))
	`(org-ellipsis ((,class (:foreground ,lime-green))))
	`(org-verbatim ((,class (:foreground ,light-purple))))
	`(org-document-info ((,class (:foreground ,cyan))))
	`(org-document-info-keyword ((,class (:foreground ,light-green))))
	`(org-document-title ((,class (:foreground ,cyan :weight bold :height 1.4))))
	`(org-sexp-date ((,class (:foreground ,light-purple))))
	`(org-block ((,class ,code)))
	`(org-block-begin-line ((,class ,block)))
	`(org-block-end-line ((,class ,block)))
	`(org-meta-line ((,class ,org-meta)))
	`(org-checkbox ((,class ,check)))
	`(org-tag ((,class ,tag)))
	
	;; eshell
	`(eshell-prompt ((,class (:foreground ,keyword :weight bold))))
	`(eshell-ls-directory ((,class (:foreground ,cyan :weight bold))))
	`(eshell-ls-symlink ((,class (:foreground ,"#bab7f7" :weight normal ))))
	`(eshell-ls-executable ((,class (:foreground ,"#04f97f" :weight bold))))
	`(eshell-ls-backup ((,class (:strike-through t :foreground ,green))))
	
	;; latex
	`(font-latex-bold-face ((,class (:foreground ,default))))
	`(font-latex-italic-face ((,class (:foreground ,cyan :italic t))))
	`(font-latex-string-face ((,class (:extforeground ,purple))))
	`(font-latex-match-reference-keywords ((,class (:foreground ,const))))
	`(font-latex-match-variable-keywords ((,class (:foreground ,slate-gray))))
	`(ido-only-match ((,class (:foreground ,warning))))
	`(ido-first-match ((,class (:foreground ,keyword :bold t))))

	;; gnu
	`(gnus-header-content ((,class (:foreground ,keyword))))
	`(gnus-header-from ((,class (:foreground ,slate-gray))))
	`(gnus-header-name ((,class (:foreground ,default))))
	`(gnus-header-subject ((,class (:foreground ,gray :bold t))))
	`(mu4e-view-url-number-face ((,class (:foreground ,default))))
	`(mu4e-cited-1-face ((,class (:foreground ,light-purple))))
	`(mu4e-cited-7-face ((,class (:foreground ,light-purple))))
	`(mu4e-header-marks-face ((,class (:foreground ,default))))
	`(ffap ((,class (:foreground ,light-purple))))
	`(warning ((,class (:foreground ,warning)))) 
	`(ac-completion-face ((,class (:underline t :foreground ,keyword))))
	`(info-quoted-name ((,class (:foreground ,lime-green))))
	`(info-string ((,class (:foreground ,purple))))
	`(icompletep-determined ((,class :foreground ,lime-green)))
        `(undo-tree-visualizer-current-face ((,class :foreground ,lime-green)))
        `(undo-tree-visualizer-default-face ((,class :foreground ,light-purple)))
        `(undo-tree-visualizer-unmodified-face ((,class :foreground ,slate-gray)))
        `(undo-tree-visualizer-register-face ((,class :foreground ,default)))
	`(slime-repl-inputed-output-face ((,class (:foreground ,default))))
        `(trailing-whitespace ((,class :foreground nil :background ,warning)))
	
	;; js
	`(js2-private-function-call ((,class (:foreground ,const))))
	`(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,"#c8b56f"))))
	`(js2-external-variable ((,class (:foreground ,"#229ec3"  ))))
        `(js2-function-param ((,class (:foreground ,dark-gray))))
        `(js2-jsdoc-value ((,class (:foreground ,purple))))
        `(js2-private-member ((,class (:foreground ,light-purple))))
        `(js3-warning-face ((,class (:underline ,keyword))))
        `(js3-error-face ((,class (:underline ,warning))))
        `(js3-external-variable-face ((,class (:foreground ,slate-gray))))
        `(js3-function-param-face ((,class (:foreground ,"#00a39d"))))
        `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
        `(js3-instance-member-face ((,class (:foreground ,const))))

	;; magit
        `(magit-item-highlight ((,class :background ,dark-purple)))
        `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
        `(magit-hunk-heading           ((,class (:background ,dark-purple))))
        `(magit-section-highlight      ((,class (:background ,dark-purple))))
        `(magit-hunk-heading-highlight ((,class (:background ,dark-purple))))
        `(magit-diff-context-highlight ((,class (:background ,dark-purple :foreground ,light-purple))))
        `(magit-diffstat-added   ((,class (:foreground ,default))))
        `(magit-diffstat-removed ((,class (:foreground ,slate-gray))))
        `(magit-process-ok ((,class (:foreground ,gray :weight bold))))
        `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
        `(magit-branch ((,class (:foreground ,const :weight bold))))
        `(magit-log-author ((,class (:foreground ,light-purple))))
        `(magit-hash ((,class (:foreground ,light-purple))))
        `(magit-diff-file-header ((,class (:foreground ,light-purple :background ,dark-purple))))
        `(lazy-highlight ((,class (:foreground ,light-purple :background ,dark-purple))))

	;; markdown
	`(markdown-header-face-1 ((,class ,md-h1)))
	`(markdown-header-face-2 ((,class ,md-h2)))
	`(markdown-header-face-3 ((,class ,md-h2)))
	`(markdown-header-face-4 ((,class ,md-h2)))
	`(markdown-markup-face ((,class (:foreground ,"#8d6e63"))))
	`(markdown-metadata-key-face ((,class (:foreground ,"#777777"))))
	`(markdown-language-keyword-face ((,class (:foreground ,keyword :weight bold))))
	`(markdown-list-face ((,class (:foreground ,"#8e9c70"))))
	`(markdown-header-delimiter-face ((,class ,md-header)))
	`(markdown-header-rule-face ((,class ,md-header)))
	`(markdown-pre-face ((,class ,contrast-green)))
	`(markdown-code-face ((,class ,md-pre-bg)))
	`(markdown-url-face ((,class (:weight normal :underline t :foreground ,cyan))))
	
 	;; web-mode	
	`(web-mode-builtin-face ((,class  (:foreground ,"#7a554a"))))
	`(web-mode-constant-face ((,class (:foreground ,"#008acb"))))
	`(web-mode-keyword-face ((,class (:foreground ,"#c0caa5"))))
	`(web-mode-doctype-face ((,class (:foreground ,light-green))))
	`(web-mode-function-name-face ((,class (:foreground ,"#8eafc3" :weight bold))))
	`(web-mode-string-face ((,class (:foreground ,slate-gray))))
	`(web-mode-type-face ((,class (:foreground ,"#3e54af"))))
	`(web-mode-html-attr-name-face ((,class (:foreground ,green))))
	`(web-mode-html-attr-value-face ((,class (:foreground ,"#00cd66"))))
	`(web-mode-warning-face ((,class (:foreground ,"#fe2500"))))
	`(web-mode-html-tag-face ((,class (:foreground ,"#8b8989" :weight bold))))
	
	;;neotree
	`(neo-file-link-face ((,class (:foreground ,"#8b8989" :family "SF Pro Text"))))
	`(neo-dir-link-face ((,class ( :foreground ,default :weight bold :family "SF Pro Text"))))
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
