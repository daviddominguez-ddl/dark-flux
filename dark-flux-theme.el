;;; dark-flux-theme.el --- Emacs theme with a dark background.
;; Copyright (C) 2019 , David Dominguez

;; Author: David Dominguez
;; https://github.com/daviddominguez-ddl
;; Version:20200408

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
       (base00 "#060708")
       (base01 "#339999")
       (base02 "#b8b8b8")
       (base03 "#c1cdc1")
       (base04 "#005656")
       (base05 "#98f5ff")
       (base06 "#b7882c")
       (base07 "#7fffd4")
       (base08 "#c1ffc1")
       (base09 "#73e500")
       (base10 "#99ff33")
       (base11 "#b0c4de")
       (base12 "#00bfff")
       (base13 "#ffa298")
       (base14 "#e3473f")
       (base15 "#686b84")
       (base16 "#a6eee7")
       (ol1 '(:bold t :foreground "#2f4f4f" :height 1.2))
       (ol2 '(:bold t :foreground "#efecc5" :height 1.1))
       (ol3 '(:bold t :foreground "#a6eee7" :height 1.0))
       (ol4 '(:bold t :foreground "#ff7d3a" :height 1.0))
       (todo '(:box (:line-width 1 :color "#eb5531") :foreground "#eb5531" :background "#6b3527" :weight bold :height 0.95 :inherit fixed-pitch))
       (done '(:box (:line-width 1 :color "#3bb8c5") :foreground "#3bbbc5" :background "#253236" :weight bold :height 0.95 :inherit fixed-pitch))
       (code '(:foreground "#37a9b7" :background "#000000" :height 0.95 :inherit fixed-pitch ))
       (block '(:foreground "#008b8b" :background "#0f1011" :height 0.95 :weight bold :inherit fixed-pitch))
       (tag '(:foreground "#ced3d1" :background "#3a5147" :box (:color "#54b768" :inherit default)))
       (check '(:foreground "#000000" :background "#d3d3d3" :box (:line-width 1 :style pressed-button)))
       (md-l1 '(:foreground "#cccccc" :height 1.6 :bold t))
       (md-l2 '(:foreground "#cccccc" :height 1.5 :bold t))
       (md-l3 '(:foreground "#cccccc" :height 1.4 :bold t))
       (md-header '(:foreground "#5082f7" :height 1.6 :bold t))
       (link '(:underline t :foreground "#a6eee7" :inherit fixed-pitch))
       (modeline '(:box (:line-width 1 :color "#003731"):foreground "#00b59c"  :background "#041e1c" :height 0.95 :inherit fixed-pitch))
       (modeline-inactive '(:box (:line-width 1 :color "#111113"):foreground "#717171" :background "#111113" :height 0.95 :inherit fixed-pitch))
       (org-dateline '(:height 1.0 :weight normal :slant normal :underline nil :strike-through nil :foreground "#e6ad4f" :background "#fff2de")))
     
   (custom-theme-set-faces
   'dark-flux
        `(default ((,class (:background ,base00 :foreground ,base01))))
        `(font-lock-builtin-face ((,class (:foreground ,base05 :weight bold))))
        `(font-lock-comment-face ((,class (:foreground ,base04 :italic t))))
	`(font-lock-negation-char-face ((,class (:foreground ,base09))))
	`(font-lock-reference-face ((,class (:foreground ,base11))))
	`(font-lock-constant-face ((,class (:foreground ,base06))))
        `(font-lock-doc-face ((,class (:foreground ,base03))))
        `(font-lock-function-name-face ((,class (:foreground ,base12))))
        `(font-lock-keyword-face ((,class (:foreground ,base08 :weight bold))))
        `(font-lock-string-face ((,class (:foreground ,base07))))
        `(font-lock-type-face ((,class (:foreground ,base13 ))))
        `(font-lock-variable-name-face ((,class (:foreground ,base05))))
        `(font-lock-warning-face ((,class (:foreground ,base14 :weight bold))))
        `(region ((,class (:foreground ,base00 :background ,"#aacfd1"))))
        `(highlight ((,class (:foreground ,"#00d0cf" :background ,base04 :weight bold))))
	`(hl-line ((,class (:background "#12242b" :weight bold ))))
	`(fringe ((,class (:background ,"#111113"))))
	`(cursor ((,class (:background ,"#eb5531"))))
	`(show-paren-match ((,class (:foreground ,"black" :background ,"#ffd700"))))
        `(isearch ((,class (:bold t :foreground ,"#121c21" :background ,"#009388" :weight bold))))
	;; border
	`(vertical-border ((,class (:foreground ,"#666666"))))
        `(minibuffer-prompt ((,class (:bold t :foreground ,base04))))
        `(default-italic ((,class (:italic t))))
	;; link
        `(link ((,class ,link)))
	`(link-visited ((,class (:foreground ,base02 :underline t))))
	;; linum
	`(linum ((,class (:height 95 :weight normal :box nil :foreground ,"#07e5bd"))))
	;; mode-line
	`(mode-line ((,class ,modeline)))
	`(mode-line-inactive ((,class ,modeline-inactive)))
	`(mode-line-buffer-id ((,class (:foreground ,"#00b59c" :underline t :weight bold))))
	`(mode-line-emphasis ((,class (:weight bold :foreground ,"#e5e5e5"))))
	`(mode-line-highlight ((,class (:foreground "#efecc5"))))
	;; vc-mode-line
	`(vc-state-faces ((,class (:foreground "#cdc673"))))
	`(vc-state-base ((,class (:foreground ,base01))))
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
	`(ivy-match-required-face ((,class (:foreground ,base13 :background ,"#5f5f5f" :weight bold))))
	`(ivy-modified-buffer ((,class (:foreground ,base13))))
	`(ivy-remote ((,class (:foreground ,base12))))
	`(ivy-highlight-face ((,class (:foreground ,base05 :weight bold))))
	;; org-mode
	`(org-code ((,class (:foreground ,"#717171" :inherit fixed-pitch))))
	`(org-hide ((,class (:foreground ,base15))))
        `(org-level-1 ((,class ,ol1)))
        `(org-level-2 ((,class ,ol2)))
        `(org-level-3 ((,class ,ol3)))
        `(org-level-4 ((,class ,ol4)))
        `(org-date ((,class (:foreground ,"#00f5ff" :inherit fixed-pitch))))
        `(org-link ((,class ,link)))
	`(org-table ((,class (:foreground ,base04 :inherit fixed-pitch))))
	`(org-special-keyword ((,class (:foreground "#3cb371" :inherit fixed-pitch))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
        `(org-todo ((,class ,todo)))
        `(org-done ((,class ,done)))
        `(org-warning ((,class (:underline t :foreground ,base14))))
        `(org-agenda-structure ((,class (:foreground "#009388" :weight bold :height 1.4))))
        `(org-agenda-date ((,class (:foreground ,base04))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,"#2f4f4f"))))
        `(org-agenda-date-today ((,class (:weight bold :foreground ,base02 :height 1.3))))
        `(org-agenda-done ((,class (:foreground ,"#63747c"))))
	`(org-agenda-clocking ((,class (:foreground ,"#009388" :background ,"#121c21"))))
	`(org-agenda-column-dateline ((,class ,org-dateline)))
	`(org-agenda-current-time ((,class (:underline t :foreground ,"#009388"))))
	`(org-scheduled ((,class (:foreground ,base07))))
        `(org-scheduled-today ((,class (:foreground ,base05 :weight bold))))
	`(org-verbatim ((,class (:foreground ,base15))))
	`(org-document-info ((,class (:foreground ,base04))))
	`(org-document-info-keyword ((,class (:foreground ,"#7f7f7f" :inherit fixed-pitch))))
	`(org-document-title ((,class (:foreground ,base01 :weight bold :height 1.5))))
	`(org-block ((,class ,code)))
	`(org-block-begin-line ((,class ,block)))
	`(org-block-end-line ((,class ,block)))
	`(org-meta-line ((,class (:foreground "#f27d3a" :inherit fixed-pitch))))
	`(org-checkbox ((,class ,check)))
	`(org-tag ((,class ,tag)))
	`(org-mode-line-clock ((,class (:box (:line-width 1 :style pressed-button) :foreground ,"#00d0cf" :background ,base04))))
	`(org-mode-line-clock-overrun ((,class (:box (:line-width 1 :style pressed-button) :foreground ,"#bfbfbf" :background ,"brown4"))))
	;; eshell
	`(eshell-prompt ((,class (:foreground ,base04 :weight bold))))
	`(eshell-ls-directory ((,class (:foreground ,"#40e0d0" :weight bold))))
	`(eshell-ls-symlink ((,class (:foreground ,base06 :weight normal ))))
	`(eshell-ls-executable ((,class (:foreground ,"#04f97f" :weight bold))))
	`(eshell-ls-backup ((,class (:strike-through t :foreground ,"#404040"))))
	;; latex
	`(font-latex-bold-face ((,class (:foreground ,base01))))
	`(font-latex-italic-face ((,class (:foreground ,base05 :italic t))))
	`(font-latex-string-face ((,class (:extforeground ,base07))))
	`(font-latex-match-reference-keywords ((,class (:foreground ,base16))))
	`(font-latex-match-variable-keywords ((,class (:foreground ,base05))))
	;; gnu
	`(gnus-header-content ((,class (:foreground ,base02))))
	`(gnus-header-from ((,class (:foreground ,base05))))
	`(gnus-header-name ((,class (:foreground ,base01))))
	`(gnus-header-subject ((,class (:foreground ,base03 :bold t))))
	`(mu4e-view-url-number-face ((,class (:foreground ,base01))))
	`(mu4e-cited-1-face ((,class (:foreground ,base15))))
	`(mu4e-cited-7-face ((,class (:foreground ,base15))))
	`(mu4e-header-marks-face ((,class (:foreground ,base01))))
	`(ffap ((,class (:foreground ,base15))))
	`(warning ((,class (:foreground ,base14))))
	`(ac-completion-face ((,class (:underline t :foreground ,base02))))
	`(info-quoted-name ((,class (:foreground ,base10))))
	`(info-string ((,class (:foreground ,base07))))
	`(icompletep-determined ((,class :foreground ,base10)))
        `(undo-tree-visualizer-current-face ((,class :foreground ,base10)))
        `(undo-tree-visualizer-default-face ((,class :foreground ,base15)))
        `(undo-tree-visualizer-unmodified-face ((,class :foreground ,base05)))
        `(undo-tree-visualizer-register-face ((,class :foreground ,base01)))
	`(slime-repl-inputed-output-face ((,class (:foreground ,base01))))
        `(trailing-whitespace ((,class :foreground nil :background ,base14)))
	;; markdown
	`(markdown-header-face-1 ((,class ,md-l1)))
	`(markdown-header-face-2 ((,class ,md-l2)))
	`(markdown-header-face-3 ((,class ,md-l3)))
	`(markdown-header-face-4 ((,class ,md-l3)))
	`(markdown-header-face-5 ((,class ,md-l3)))
	`(markdown-header-face-6 ((,class ,md-l3)))
	`(markdown-markup-face ((,class (:foreground ,"#3a5ca6"))))
	`(markdown-metadata-key-face ((,class (:foreground ,"#777777"))))
	`(markdown-language-keyword-face ((,class (:foreground ,"#cccccc"))))
	`(markdown-list-face ((,class (:foreground ,"#5082f7"))))
	`(markdown-header-delimiter-face ((,class ,md-header)))
	`(markdown-header-rule-face ((,class ,md-header)))
	`(markdown-pre-face ((,class (:foreground "#00faa0" :background "#000000" :inherit fixed-pitch))))
	`(markdown-code-face ((,class (:foreground "#54ff9f" :inherit fixed-pitch))))
	`(markdown-url-face ((,class (:foreground "#f0c981"))))
	`(markdown-header-delimiter-face ((,class (:foreground ,base03))))
 	;; web-mode
	`(web-mode-builtin-face ((,class  (:foreground ,"#7a554a"))))
	`(web-mode-constant-face ((,class (:foreground ,"#008acb"))))
	`(web-mode-keyword-face ((,class (:foreground ,"#c0caa5"))))
	`(web-mode-doctype-face ((,class (:foreground ,"#fb3e90"))))
	`(web-mode-function-name-face ((,class (:foreground ,"#8eafc3" :weight bold))))
	`(web-mode-string-face ((,class (:foreground ,base07))))
	`(web-mode-type-face ((,class (:foreground ,base13))))
	`(web-mode-html-tag-face ((,class (:foreground ,"#8b8989" :weight bold))))
	`(web-mode-html-attr-name-face ((,class (:foreground ,"#289897"))))
	`(web-mode-html-attr-value-face ((,class (:foreground ,base07))))
	`(web-mode-warning-face ((,class (:foreground ,base14))))
	;;neotree
	`(neo-root-dir-face ((,class ( :foreground ,base16 :weight bold :height 0.95 :inherit variable-pitch))))
	`(neo-dir-link-face ((,class ( :foreground ,base01 :weight bold :height 0.95 :inherit variable-pitch))))
	`(neo-file-link-face ((,class (:foreground ,"#8b8989" :height 0.95 :inherit variable-pitch))))
	;;power-line
	`(powerline-active1 ((,class (:foreground ,base05 :background ,base00))))
	`(powerline-active2 ((,class (:foreground ,base05 :background ,base00))))
	`(powerline-inactive1 ((,class (:foreground "#474747" :background "#000000"))))
	`(powerline-inactive2 ((,class (:foreground "#474747" :background "#000000"))))
	;; company
	`(company-tooltip ((,class (:foreground ,"#289897" :background ,"#111113"))))
	`(company-tooltip-selection ((,class (:foreground ,base05))))
	`(company-tooltip-common ((,class (:foreground "#eb5531"))))
	`(company-scrollbar-bg ((,class (:background ,base00 ))))
	`(company-scrollbar-fg ((,class (:background ,base04))))
	`(company-preview ((,class (:foreground ,base11 :background ,"#2f4f4f"))))
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
