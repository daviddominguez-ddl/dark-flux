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
       (foreground "#bdc3ce") 
       (fg2 "#686b84")
       (fg3 "#5e6277")
       (fg4 "#55586c")
       (background "#282B3A")
       (bg2 "#373949")
       (bg3 "#464857")
       (bg4 "#565865")
       (builtin "#99FF33")
       (keyword "#B2FF66")
       (const   "#73E500")
       (link "#A6FF4C")
       (func    "#cccccc")
       (purple  "#AD85F7")
       (purple2 "#282b3c")
       (green   "#80FF00")
       (green1  "#336600")
       (green2  "#193300")
       
       (green6  "#99ff33")
       (gray1   "#63747c")
       (gray2   "#63747c")
       (blue2   "#63a9dd")
       (black1  "#050504")
       (red1    "#ec6541")
       (red2    "#ff5f5f")
       (gray3   "#5f5f5f")
       (blue1   "#62A9DD")
       (str     "#bd85f7")
       (type    "#74FE53") 
       (var     "#b3b3b3")
       (warning "#FF3C45")
       (cyan    "#A6EEE7")
       (org-l   "#999999") )
   (custom-theme-set-faces
   'dark-flux
        `(default ((,class (:background ,background :foreground ,foreground))))
        `(font-lock-builtin-face ((,class (:foreground ,cyan))))
        `(font-lock-comment-face ((,class (:foreground ,gray2 :weight light))))
	`(font-lock-negation-char-face ((,class (:foreground ,const))))
	`(font-lock-reference-face ((,class (:foreground ,keyword))))
	`(font-lock-constant-face ((,class (:foreground ,foreground :bold t))))
        `(font-lock-doc-face ((,class (:foreground ,cyan))))
        `(font-lock-function-name-face ((,class (:foreground ,builtin :bold t))))
        `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
        `(font-lock-string-face ((,class (:foreground ,purple))))
        `(font-lock-type-face ((,class (:foreground ,type ))))
        `(font-lock-variable-name-face ((,class (:foreground ,foreground))))
        `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))
        `(region ((,class (:background ,foreground :foreground ,background))))
        `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
	`(hl-line ((,class (:background  ,bg2))))
	`(fringe ((,class (:background ,background :foreground ,fg4))))
	`(cursor ((,class (:foreground ,warning :background ,warning))))
        `(show-paren-match-face ((,class (:background ,warning))))
        `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))
		
	;; border
	`(vertical-border ((,class (:foreground ,fg3))))
        `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
        `(default-italic ((,class (:italic t))))

	;; link faces
        `(link ((,class (:foreground ,link :underline t ))))
	`(link-visited ((,class (:foreground ,keyword :underline t))))

	;; linum
	`(linum ((,class (:height 100 :weight normal :box nil :foreground ,builtin ))))

	;; mode-line
	`(mode-line ((,class (:box (:line-width 3 :color ,"#38394c") :foreground ,builtin :background ,"#38394c"))))
	`(mode-line-inactive ((,class  (:foreground ,"#008b8b" ))))
	`(mode-line-buffer-id ((,class (:weight bold :foreground ,purple))))
	`(mode-line-emphasis ((,class (:weight bold :foreground ,purple))))
	`(mode-line-highlight ((,class (:foreground "yellow"))))

	;; dired
	`(dired-header ((,class (:foreground ,blue1 :weight light))))
	`(dired-directory ((,class (:foreground ,blue1 :weight normal ))))
	`(dired-ignored ((,class (:strike-through t :foreground "firebrick1"))))
	`(dired-mark ((,class (:weight bold :foreground "white" :background "firebrick1"))))
	`(dired-marked ((,class (:weight bold :foreground "white" :background "firebrick1"))));;maroon1
	`(dired-symlink ((,class (:foreground "firebrick1" :weight bold :height 0.9))))
	
	;; popup
	`(popup-face ((,class (:foreground ,"#00cd00" :background ,green2 ))))
	`(popup-scroll-bar-background-face ((,class (:background ,cyan ))))
	`(popup-scroll-bar-foreground-face ((,class (:background ,"pink" ))))
	`(popup-menu-selection-face ((,class (:foreground ,purple2 :background ,green6 :weight bold))))
	
	;; ivy
	`(ivy-current-match ((,class (:background ,blue2 :weight bold :foreground ,black1)))) 
	`(ivy-minibuffer-match-face-1 ((,class (:foreground ,keyword))))
	`(ivy-minibuffer-match-face-2 ((,class (:foreground ,red1))))  
	`(ivy-minibuffer-match-face-3 ((,class (:foreground ,red1))))
	`(ivy-minibuffer-match-face-4 ((,class (:foreground ,red1))))
	`(ivy-match-required-face ((,class (:foreground ,red2 :background ,gray3 :weight bold))))
	`(ivy-modified-buffer ((,class (:foreground ,red2))))
	`(ivy-remote ((,class (:foreground ,blue1))))
	`(ivy-highlight-face ((,class (:foreground ,blue1 :weight bold))))

	;;org-mode
	`(org-code ((,class (:foreground ,fg2))))
	`(org-hide ((,class (:foreground ,fg4))))
        `(org-level-1 ((,class (:bold t :foreground ,org-l :height 1.2))))
        `(org-level-2 ((,class (:bold t :foreground ,org-l :height 1.1))))
        `(org-level-3 ((,class (:bold t :foreground ,org-l :height 1.0))))
        `(org-level-4 ((,class (:bold t :foreground ,org-l :height 1.0))))
        `(org-date ((,class (:underline t :foreground ,cyan) )))
        `(org-footnote  ((,class (:underline t :foreground ,fg4))))
        `(org-link ((,class (:underline t :foreground ,type ))))
        `(org-special-keyword ((,class (:foreground ,func))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
        `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,keyword :bold t))))
        `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,green))));;bg4
        `(org-warning ((,class (:underline t :foreground ,warning))))
        `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
        `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
        `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
        `(org-agenda-done ((,class (:foreground ,bg4))))
	`(org-scheduled ((,class (:foreground ,purple))))
        `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
	`(org-ellipsis ((,class (:foreground ,builtin))))
	`(org-verbatim ((,class (:foreground ,fg4))))
	`(org-document-info ((,class (:foreground ,cyan))))
	`(org-document-info-keyword ((,class (:foreground ,purple))))
	`(org-document-title ((,class ( :height 1.3 :weight bold :foreground ,cyan))))
	`(org-sexp-date ((,class (:foreground ,fg4))))

	`(org-block ((,class (:foreground ,fg3 :background ,"#181818"))))
	`(org-block-begin-line ((,class ( :foreground ,"#229EC3"))))
	`(org-block-end-line ((,class ( :foreground ,"#229EC3"))))

	
	;; eshell
	`(eshell-prompt ((,class (:foreground ,builtin :weight bold :height 0.9 ))))
	`(eshell-ls-directory ((,class (:foreground ,purple :weight bold :height 0.9))))
	`(eshell-ls-symlink ((,class (:foreground ,"DeepPink" :weight normal :height 0.9))))
	`(eshell-ls-executable ((,class (:foreground ,"green1" :weight bold :height 0.9))))
	
	;; latex
	`(font-latex-bold-face ((,class (:foreground ,type))))
	`(font-latex-italic-face ((,class (:foreground ,cyan :italic t))))
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

	;; web-mode	
	`(web-mode-builtin-face ((,class  (:foreground ,"#7A554A"))))
	`(web-mode-constant-face ((,class (:foreground ,"#008ACB"))))
	`(web-mode-keyword-face ((,class (:foreground ,"#C0CAA5"))))
	`(web-mode-doctype-face ((,class (:foreground ,"#E5FCC2"))))
	`(web-mode-function-name-face ((,class (:foreground ,"#8EAFC3" :weight bold))))
	`(web-mode-string-face ((,class (:foreground ,"#b3b3b3"))))
	`(web-mode-type-face ((,class (:foreground ,"#3E54AF"))))
	`(web-mode-html-attr-name-face ((,class (:foreground ,"#008b45"))))
	`(web-mode-html-attr-value-face ((,class (:foreground ,"#00cd66"))))
	`(web-mode-warning-face ((,class (:foreground ,"#fe2500"))))
	`(web-mode-html-tag-face ((,class (:foreground ,"#8B8989" :weight bold)))) ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dark-flux)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; dark-flux-theme.el ends here
