;;; dark-flux-theme.el --- Emacs theme with a dark background.

;; Copyright (C) 2019 , David Dominguez

;; Author: David Dominguez
;; https://github.com/daviddominguez-ddl
;; Version: 1.0.3
;; Package-Requires: ((emacs "24"))


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
       (fg1 "#bdc3ce") 
       (fg2 "#686b84")
       (fg3 "#5e6277")
       (fg4 "#55586c")
       (fg5 "#b1b5d0")
       (fg6 "#797979")
       (bg1 "#202329")
       (bg2 "#373949")
       (bg3 "#464857")
       (bg4 "#565865")
       (bg5 "#335eab")
       (bg6 "#333333")
       (bg7 "#2c2c2c")
       (key2 "#bcff79")
       (key3 "#9de05b")
       (builtin "#99ff33")
       (keyword "#f6aa3b")
       (const   "#73e500")
       (const1 "#A6ff4C")
       (comment "#4ba1e0")
       (func    "#cccccc")
       (purple  "#Ad85f7")
       (purple2 "#282b3c")
       (purple3 "#717590")
       (green   "#80ff00")
       (green1  "#336600")
       (gray1    "#63747c")
       (gray2   "#5f5f5f")
       (black1  "#050504")
       (red1    "#ec6541")
       (red2    "#ff5f5f")
       (blue1   "#62a9dd")
       (blue2   "#63a9dd")
       (pink1   "#ff69b4")
       (str     "#bd85f7")
       (type    "#8ad845") 
       (var     "#b3b3b3")
       (warning "#ff3C45"))
   (custom-theme-set-faces
   'dark-flux
        `(default ((,class (:background ,bg1 :foreground ,fg1))))
        `(font-lock-builtin-face ((,class (:foreground ,builtin))))
        `(font-lock-comment-face ((,class (:foreground ,gray1 :weight light))))
	`(font-lock-negation-char-face ((,class (:foreground ,const))))
	`(font-lock-reference-face ((,class (:foreground ,keyword))))
	`(font-lock-constant-face ((,class (:foreground ,fg1 :bold t))))
        `(font-lock-doc-face ((,class (:foreground ,comment))))
        `(font-lock-function-name-face ((,class (:foreground ,func :bold t))))
        `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
        `(font-lock-string-face ((,class (:foreground ,pink1))))
        `(font-lock-type-face ((,class (:foreground ,type ))))
        `(font-lock-variable-name-face ((,class (:foreground ,fg1))))
        `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))
        `(region ((,class (:background ,fg1 :foreground ,bg1))))
        `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
	`(hl-line ((,class (:background  ,bg2))))
	`(fringe ((,class (:background ,bg1 :foreground ,fg4))))
	`(cursor ((,class (:foreground ,warning :background ,warning))))
        `(show-paren-match-face ((,class (:background ,warning))))
        `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))
		
	;; border
	`(vertical-border ((,class (:foreground ,fg3))))
        `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
        `(default-italic ((,class (:italic t))))

	;; link faces
        `(link ((,class (:foreground ,const1 :underline t ))))
	`(link-visited ((,class (:foreground ,keyword :underline t))))


	;; linum
	`(linum ((,class (:height 100 :weight normal :box nil :foreground ,fg6  :background ,bg7 :inherit default))))

	;; mode-line
	`(mode-line ((,class (:box (:line-width 2 :color ,bg5) :foreground ,fg5 :background ,bg5 :weight light))))
	`(mode-line-inactive ((,class (:box (:line-width 2 :color ,bg6) :foreground ,fg5 :background ,bg6 :weight light))))

	;; dired
	`(dired-header ((,class (:foreground ,blue1 :weight light))))
	`(dired-directory ((,class (:foreground ,blue1 :weight normal ))))
	`(dired-ignored ((,class (:strike-through t :foreground "firebrick1"))))
	`(dired-mark ((,class (:weight bold :foreground "white" :background "firebrick1"))))
	`(dired-marked ((,class (:weight bold :foreground "white" :background "firebrick1"))))
	`(dired-symlink ((,class (:foreground "firebrick1" :weight bold :height 0.9))))
	
	;; popup
	`(popup-face ((,class (:foreground "#d8d8d8" :background "#383838" ))))
	`(popup-isearch-match ((,class (:foreground "#181818" :background "#a1b56c" ))))
	`(popup-scroll-bar-background-face ((,class (:background "#585858" ))))
	`(popup-scroll-bar-foreground-face ((,class (:background "#d8d8d8" ))))
	`(popup-summary-face ((,class (:foreground "#b8b8b8"))))
	`(popup-tip-face ((,class (:foreground "#181818" :background "#f7ca88" ))))
	`(popup-menu-mouse-face ((,class (:foreground "#181818" :background "#7cafc2" ))))
	`(popup-menu-selection-face ((,class (:foreground "#181818" :background "#86c1b9" ))))
	
	;; ivy
	`(ivy-current-match ((,class (:background ,blue2 :weight bold :foreground ,black1)))) 
	`(ivy-minibuffer-match-face-1 ((,class (:foreground ,keyword))))
	`(ivy-minibuffer-match-face-2 ((,class (:foreground ,red1))))  
	`(ivy-minibuffer-match-face-3 ((,class (:foreground ,red1))))
	`(ivy-minibuffer-match-face-4 ((,class (:foreground ,red1))))
	`(ivy-match-required-face ((,class (:foreground ,red2 :background ,gray2 :weight bold))))
	`(ivy-modified-buffer ((,class (:foreground ,red2))))
	`(ivy-remote ((,class (:foreground ,blue1))))
	`(ivy-highlight-face ((,class (:foreground ,blue1 :weight bold))))

	;; 
	
	;;org-mode
	`(org-code ((,class (:foreground ,fg2))))
	`(org-hide ((,class (:foreground ,fg4))))
        `(org-level-1 ((,class (:bold t :foreground ,fg2 :height 1.1))))
        `(org-level-2 ((,class (:bold nil :foreground ,fg3))))
        `(org-level-3 ((,class (:bold t :foreground ,fg4))))
        `(org-level-4 ((,class (:bold nil :foreground ,bg4))))
        `(org-date ((,class (:underline t :foreground ,var) )))
        `(org-footnote  ((,class (:underline t :foreground ,fg4))))
        `(org-link ((,class (:underline t :foreground ,type ))))
        `(org-special-keyword ((,class (:foreground ,func))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
        `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,keyword :bold t))))
        `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,green))))
        `(org-warning ((,class (:underline t :foreground ,warning))))
        `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
        `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
        `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
        `(org-agenda-done ((,class (:foreground ,bg4))))
	`(org-scheduled ((,class (:foreground ,type))))
        `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
	`(org-ellipsis ((,class (:foreground ,builtin))))
	`(org-verbatim ((,class (:foreground ,fg4))))
        `(org-document-info-keyword ((,class (:foreground ,func))))
	`(org-sexp-date ((,class (:foreground ,fg4))))
	`(org-block ((,class (:foreground ,fg3 :background ,"#181818"))))
	`(org-block-begin-line ((,class ( :foreground ,"#229EC3"))))
	`(org-block-end-line ((,class ( :foreground ,"#229EC3"))))

	
	;; eshell
	`(eshell-prompt ((,class (:foreground ,"firebrick1" :background ,bg1 :weight bold :height 0.9 ))))
	`(eshell-ls-directory ((,class (:foreground ,comment :background ,bg1 :weight bold :height 0.9))))
	`(eshell-ls-symlink ((,class (:foreground ,"DeepPink" :background ,bg1 :weight normal :height 0.9))))
	`(eshell-ls-executable ((,class (:foreground ,"green1" :background ,bg1 :weight bold :height 0.9))))
	
	;; latex
	`(font-latex-bold-face ((,class (:foreground ,type))))
	`(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
	`(font-latex-string-face ((,class (:foreground ,str))))
	`(font-latex-match-reference-keywords ((,class (:foreground ,const))))
	`(font-latex-match-variable-keywords ((,class (:foreground ,var))))
	`(ido-only-match ((,class (:foreground ,warning))))
	`(ido-first-match ((,class (:foreground ,keyword :bold t))))

	;; gnu
	`(gnus-header-content ((,class (:foreground ,keyword))))
	`(gnus-header-from ((,class (:foreground ,var))))
	`(gnus-header-name ((,class (:foreground ,type))))
	`(gnus-header-subject ((,class (:foreground ,func :bold t))))
	`(mu4e-view-url-number-face ((,class (:foreground ,type))))
	`(mu4e-cited-1-face ((,class (:foreground ,fg2))))
	`(mu4e-cited-7-face ((,class (:foreground ,fg3))))
	`(mu4e-header-marks-face ((,class (:foreground ,type))))
	`(ffap ((,class (:foreground ,fg4))))
	`(warning ((,class (:foreground ,warning)))) 
	`(ac-completion-face ((,class (:underline t :foreground ,keyword))))
	`(info-quoted-name ((,class (:foreground ,builtin))))
	`(info-string ((,class (:foreground ,str))))
	`(icompletep-determined ((,class :foreground ,builtin)))
        `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
        `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
        `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
        `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
	`(slime-repl-inputed-output-face ((,class (:foreground ,type))))
        `(trailing-whitespace ((,class :foreground nil :background ,warning)))


	;; js
	`(js2-private-function-call ((,class (:foreground ,const))))
	`(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,"#C8B56F"))))
	`(js2-jsdoc-html-tag-name ((,class (:foreground ,"#D76E59")))) 
	`(js2-external-variable ((,class (:foreground ,"#229EC3"  ))))
        `(js2-function-param ((,class (:foreground ,gray1))))
        `(js2-jsdoc-value ((,class (:foreground ,str))))
        `(js2-private-member ((,class (:foreground ,fg3))))
        `(js3-warning-face ((,class (:underline ,keyword))))
        `(js3-error-face ((,class (:underline ,warning))))
        `(js3-external-variable-face ((,class (:foreground ,var))))
        `(js3-function-param-face ((,class (:foreground ,"#00A39D"))))
        `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
        `(js3-instance-member-face ((,class (:foreground ,const))))

	;;rainbow
	`(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
        `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
        `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
        `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
        `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
        `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))
	`(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))

	;; magit
        `(magit-item-highlight ((,class :background ,bg3)))
        `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
        `(magit-hunk-heading           ((,class (:background ,bg3))))
        `(magit-section-highlight      ((,class (:background ,bg2))))
        `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
        `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
        `(magit-diffstat-added   ((,class (:foreground ,type))))
        `(magit-diffstat-removed ((,class (:foreground ,var))))
        `(magit-process-ok ((,class (:foreground ,func :weight bold))))
        `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
        `(magit-branch ((,class (:foreground ,const :weight bold))))
        `(magit-log-author ((,class (:foreground ,fg3))))
        `(magit-hash ((,class (:foreground ,fg2))))
        `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
        `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))

	;; term
        `(term ((,class (:foreground ,fg1 :background ,bg1))))
        `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
        `(term-color-blue ((,class (:foreground ,func :background ,func))))
        `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
        `(term-color-green ((,class (:foreground ,type :background ,bg3))))
        `(term-color-yellow ((,class (:foreground ,var :background ,var))))
        `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
        `(term-color-cyan ((,class (:foreground ,str :background ,str))))
        `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))

	;;helm
        `(helm-header ((,class (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
        `(helm-source-header ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight bold))))
        `(helm-selection ((,class (:background ,bg2 :underline nil))))
        `(helm-selection-line ((,class (:background ,bg2))))
        `(helm-visible-mark ((,class (:foreground ,bg1 :background ,bg3))))
        `(helm-candidate-number ((,class (:foreground ,bg1 :background ,fg1))))
        `(helm-separator ((,class (:foreground ,type :background ,bg1))))
        `(helm-time-zone-current ((,class (:foreground ,builtin :background ,bg1))))
        `(helm-time-zone-home ((,class (:foreground ,type :background ,bg1))))
        `(helm-buffer-not-saved ((,class (:foreground ,type :background ,bg1))))
        `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
        `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-buffer-size ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-ff-directory ((,class (:foreground ,func :background ,bg1 :weight bold))))
        `(helm-ff-file ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
        `(helm-ff-executable ((,class (:foreground ,key2 :background ,bg1 :weight normal))))
        `(helm-ff-invalid-symlink ((,class (:foreground ,key3 :background ,bg1 :weight bold))))
        `(helm-ff-symlink ((,class (:foreground ,keyword :background ,bg1 :weight bold))))
        `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
        `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-file ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bg1))))
        `(helm-grep-lineno ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
        `(helm-grep-running ((,class (:foreground ,func :background ,bg1))))
        `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
        `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
        `(helm-bookmark-w3m ((,class (:foreground ,type))))

	;; company
        `(company-echo-common ((,class (:foreground ,bg1 :background ,fg1))))
        `(company-preview ((,class (:background ,bg1 :foreground ,key2))))
        `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
        `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
        `(company-scrollbar-bg ((,class (:background ,bg3))))
        `(company-scrollbar-fg ((,class (:foreground ,keyword))))
        `(company-tooltip ((,class (:foreground ,fg2 :background ,bg1 :bold t))))
        `(company-tooltop-annotation ((,class (:foreground ,const))))
        `(company-tooltip-common ((,class ( :foreground ,fg3))))
        `(company-tooltip-common-selection ((,class (:foreground ,str))))
        `(company-tooltip-mouse ((,class (:inherit highlight))))
        `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
        `(company-template-field ((,class (:inherit region))))

	;; web-mode	
        `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
        `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
        `(web-mode-keyword-face ((,class (:foreground ,keyword))));;ok
        `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-function-name-face ((,class (:foreground ,"#75BFFF"))))
        `(web-mode-string-face ((,class (:foreground ,const))))
        `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
        `(web-mode-html-attr-name-face ((,class (:foreground ,pink1))))
        `(web-mode-html-attr-value-face ((,class (:foreground ,purple))))
        `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
	`(web-mode-html-tag-face ((,class (:foreground ,"#40A8F8"))))

	;; jde-java
        `(jde-java-font-lock-package-face ((t (:foreground ,var))))
        `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
        `(jde-java-font-lock-modifier-face ((t (:foreground ,key3))))
        `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-number-face ((t (:foreground ,var))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dark-flux)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; dark-flux-theme.el ends here
