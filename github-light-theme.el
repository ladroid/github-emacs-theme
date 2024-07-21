;;; package: --- Github theme for Emacs

;;; Copyright (C) 2024 ladroid
;;; Author: ladroid
;;; Version: 0.1
;;; Filename: github-light-theme.el
;;; Package-Requires: ((emacs "24" or >))
;;; URL: https://gist.github.com/ladroid/37561698c9a953d4a5231a3f9241e81d
;;; License: GPL-3+
;;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Code:

(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(autothemer-deftheme
 github-light "Github theme for Emacs"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  ;; Define our color palette
  (comment-color		        "#768390" "#768390")
  (keyword-color		        "#dd5b4f" "#dd5b4f")
  (text-color		          "#262e39" "#262e39")
  (background-color	      "#ffffff" "#ffffff")
  (string-color		      "#4cb3e7" "#4cb3e7")
  (number-color		      "#159adb" "#159adb")
  (highlight-color       "#dbe9f9" "#dbe9f9")
  (oniViolet             "#7646c1" "#7646c1")
  (yellow-color          "#7646c1" "#7646c1"))

  ;; Customize faces
  (
  (default                                       (:background background-color :foreground text-color))
  (border                                        (:background background-color :foreground text-color))
  (button                                        (:foreground keyword-color))
  (child-frame                                   (:background background-color :foreground text-color))
  (child-frame-border                            (:background background-color :foreground text-color))
  (cursor                                        (:background string-color :foreground background-color :bold t))
  (error                                         (:foreground keyword-color))
  (fringe                                        (:foreground comment-color))
  (glyph-face                                    (:background comment-color))
  (glyphless-char                                (:foreground comment-color))
  (header-line                                   (:background background-color))
  (highlight                                     (:background highlight-color :foreground string-color))
  (hl-line                                       (:background nil))
  (homoglyph                                     (:foreground string-color))
  (internal-border                               (:background background-color))
  (line-number                                   (:foreground comment-color))
  (line-number-current-line                      (:foreground string-color :background highlight-color :bold t))
  (lv-separator                                  (:foreground background-color :background highlight-color))
  (match                                         (:background number-color :foreground background-color))
  (menu                                          (:background background-color :foreground text-color))
  (mode-line                                     (:background background-color :foreground oniViolet :bold nil))
  (mode-line-inactive                            (:background nil :foreground comment-color :bold nil))
  (mode-line-active                              (:background background-color :foreground oniViolet :bold nil))
  (mode-line-highlight                           (:foreground number-color))
  (mode-line-buffer-id                           (:foreground oniViolet :bold t))
  (numbers                                       (:foreground number-color))
  (region                                        (:background highlight-color))
  (separator-line                                (:background background-color))
  (shadow                                        (:background background-color))
  (success                                       (:foreground keyword-color))
  (vertical-border                               (:foreground comment-color))
  (warning                                       (:foreground number-color))
  (window-border                                 (:background background-color))
  (window-divider                                (:foreground background-color))
  (hi-yellow                                     (:background number-color :foreground background-color))

  ;; Font lock
  (font-lock-type-face                           (:foreground yellow-color))
  (font-lock-regexp-grouping-backslash           (:foreground number-color))
  (font-lock-keyword-face                        (:foreground keyword-color :weight 'semi-bold))
  (font-lock-warning-face                        (:foreground number-color))
  (font-lock-string-face                         (:foreground string-color :italic t))
  (font-lock-builtin-face                        (:foreground keyword-color))
  (font-lock-reference-face                      (:foreground keyword-color))
  (font-lock-constant-face                       (:foreground number-color))
  (font-lock-function-name-face                  (:foreground oniViolet))
  (font-lock-variable-name-face                  (:foreground text-color))
  (font-lock-negation-char-face                  (:foreground keyword-color))
  (font-lock-comment-face                        (:foreground comment-color :italic t))
  (font-lock-comment-delimiter-face              (:foreground comment-color :italic t))
  (font-lock-doc-face                            (:foreground comment-color))
  (font-lock-doc-markup-face                     (:foreground comment-color))
  (font-lock-preprocessor-face	                 (:foreground number-color))
  (elisp-shorthand-font-lock-face                (:foreground text-color))

  (info-xref                                     (:foreground number-color))
  (minibuffer-prompt-end                         (:foreground keyword-color :background keyword-color))
  (minibuffer-prompt                             (:foreground number-color :background background-color))
  (epa-mark                                      (:foreground text-color))
  (dired-mark                                    (:foreground text-color))
  (trailing-whitespace                           (:background comment-color))
  (mode-line                                     (:background background-color :foreground oniViolet :bold t))

  ;; Battery colors
  (doom-modeline-battery-critical                (:foreground keyword-color))
  (doom-modeline-battery-warning                 (:foreground string-color))
  (doom-modeline-battery-charging                (:foreground comment-color))
  (doom-modeline-battery-error                   (:foreground keyword-color))
  (doom-modeline-battery-normal                  (:foreground string-color))
  (doom-modeline-battery-full                    (:foreground keyword-color))
  
  ;; Doom visual state
  (doom-modeline-evil-motion-state               (:foreground string-color))
  (doom-modeline-evil-emacs-state                (:foreground string-color))
  (doom-modeline-evil-insert-state               (:foreground keyword-color))
  (doom-modeline-evil-normal-state               (:foreground string-color))
  (doom-modeline-evil-visual-state               (:foreground string-color))
  (doom-modeline-evil-replace-state              (:foreground number-color))
  (doom-modeline-evil-operator-state             (:foreground string-color))

  (doom-modeline-project-dir                     (:bold t :foreground oniViolet))
  (doom-modeline-buffer-path                     (:inherit 'bold :foreground oniViolet))
  (doom-modeline-buffer-file                     (:inherit 'bold :foreground oniViolet))
  (doom-modeline-buffer-modified                 (:inherit 'bold :foreground number-color))
  (doom-modeline-error                           (:background keyword-color))
  (doom-modeline-buffer-major-mode               (:foreground oniViolet :bold t))
  (doom-modeline-info                            (:bold t :foreground string-color))
  (doom-modeline-project-dir                     (:bold t :foreground number-color))
  (doom-modeline-bar                             (:bold t :background comment-color))
  (doom-modeline-panel                           (:inherit 'bold :background number-color :foreground background-color))
  (doom-themes-visual-bell                       (:background keyword-color))

  ;; elfeed
  (elfeed-search-feed-face                       (:foreground string-color))
  (elfeed-search-tag-face                        (:foreground oniViolet))

  ;; message colors
  (message-header-name                           (:foreground comment-color))
  (message-header-other                          (:foreground number-color))
  (message-header-subject                        (:foreground number-color))
  (message-header-to                             (:foreground text-color))
  (message-header-cc                             (:foreground keyword-color))
  (message-header-xheader                        (:foreground text-color))
  (custom-link                                   (:foreground string-color))
  (link                                          (:foreground string-color))

  ;; org-mode
  (org-done                                      (:foreground string-color))
  (org-code                                      (:background background-color))
  (org-meta-line                                 (:background background-color))
  (org-block                                     (:background background-color :foreground comment-color))
  (org-block-begin-line                          (:background background-color))
  (org-block-end-line	                           (:background background-color))
  (org-headline-done                             (:foreground string-color :strike-through t))
  (org-todo                                      (:foreground number-color :bold t))
  (org-headline-todo                             (:foreground background-color))
  (org-upcoming-deadline                         (:foreground keyword-color))
  (org-footnote                                  (:foreground keyword-color))
  (org-indent                                    (:background background-color :foreground background-color))
  (org-hide                                      (:background background-color :foreground background-color))
  (org-date                                      (:foreground background-color))
  (org-ellipsis                                  (:foreground background-color :bold t))
  (org-level-1                                   (:foreground keyword-color :height 1.3 :bold t))
  (org-level-2                                   (:foreground string-color :height 1.15 :bold t))
  (org-level-3                                   (:foreground number-color :height 1.05))
  (org-level-4                                   (:foreground text-color))
  (org-level-5                                   (:foreground text-color))
  (org-level-6                                   (:foreground number-color))
  (org-level-7                                   (:foreground number-color))
  (org-level-8                                   (:foreground string-color))

  ;; which-key
  (which-key-key-face                            (:inherit 'font-lock-variable-name-face))
  (which-func                                    (:inherit 'font-lock-function-name-face :bold t))
  (which-key-group-description-face              (:foreground keyword-color))
  (which-key-command-description-face            (:foreground string-color))
  (which-key-local-map-description-face          (:foreground number-color))
  (which-key-posframe                            (:background keyword-color))
  (which-key-posframe-border	                   (:background keyword-color))

  ;; swiper
  (swiper-line-face                              (:foreground number-color))
  (swiper-background-match-face-1                (:background number-color :foreground background-color))
  (swiper-background-match-face-2                (:background string-color :foreground background-color))
  (swiper-background-match-face-3                (:background number-color :foreground background-color))
  (swiper-background-match-face-4                (:background keyword-color :foreground background-color))
  (swiper-match-face-1                           (:inherit 'swiper-background-match-face-1))
  (swiper-match-face-2                           (:inherit 'swiper-background-match-face-2))
  (swiper-match-face-3                           (:inherit 'swiper-background-match-face-3))
  (swiper-match-face-4                           (:inherit 'swiper-background-match-face-4))

  (counsel-outline-default                       (:foreground number-color))
  (info-header-xref                              (:foreground number-color))
  (xref-file-header                              (:foreground number-color))
  (xref-match                                    (:foreground number-color))

  ;; rainbow delimiters
  (rainbow-delimiters-mismatched-face            (:foreground keyword-color))
  (rainbow-delimiters-unmatched-face             (:foreground keyword-color))
  (rainbow-delimiters-base-error-face            (:foreground keyword-color))
  (rainbow-delimiters-base-face                  (:foreground comment-color))

  (rainbow-delimiters-depth-1-face               (:foreground string-color))
  (rainbow-delimiters-depth-2-face               (:foreground string-color))
  (rainbow-delimiters-depth-3-face               (:foreground string-color))
  (rainbow-delimiters-depth-4-face               (:foreground string-color))
  (rainbow-delimiters-depth-5-face               (:foreground keyword-color))
  (rainbow-delimiters-depth-6-face               (:foreground number-color))
  (rainbow-delimiters-depth-7-face               (:foreground text-color))
  (rainbow-delimiters-depth-8-face               (:foreground string-color))
  (rainbow-delimiters-depth-9-face               (:foreground string-color))

  ;; show-paren
  (show-paren-match                              (:background keyword-color :foreground background-color :bold t))
  (show-paren-match-expression	                 (:background keyword-color :foreground background-color :bold t))
  (show-paren-mismatch                           (:background keyword-color :foreground text-color))
  (tooltip                                       (:foreground background-color :background number-color :bold t))
  
  ;; company-box
  (company-tooltip                               (:background background-color))
  (company-tooltip-common                        (:foreground number-color))
  (company-tooltip-quick-access                  (:foreground string-color))
  (company-tooltip-scrollbar-thumb               (:background keyword-color))
  (company-tooltip-scrollbar-track               (:background comment-color))
  (company-tooltip-search                        (:background number-color :foreground background-color :distant-foreground text-color))
  (company-tooltip-selection                     (:background comment-color :foreground nil :bold t))
  (company-tooltip-mouse                         (:background comment-color :foreground background-color :distant-foreground text-color))
  (company-tooltip-annotation                    (:foreground keyword-color :distant-foreground background-color))
  (company-scrollbar-bg                          (:inherit 'tooltip))
  (company-scrollbar-fg                          (:background keyword-color))
  (company-preview                               (:foreground number-color))
  (company-preview-common                        (:foreground keyword-color :bold t))
  (company-preview-search                        (:inherit 'company-tooltip-search))
  (company-template-field                        (:inherit 'match))

  ;; flycheck
  (flycheck-posframe-background-face             (:background background-color))
  (flycheck-posframe-face                        (:background background-color))
  (flycheck-posframe-info-face                   (:background background-color :foreground string-color))
  (flycheck-posframe-warning-face                (:background background-color :foreground string-color))
  (flycheck-posframe-error-face                  (:background background-color :foreground keyword-color))
  (flycheck-fringe-warning                       (:foreground string-color))
  (flycheck-fringe-error                         (:foreground keyword-color))
  (flycheck-fringe-info                          (:foreground string-color))
  (flycheck-error-list-warning                   (:foreground number-color :bold t))
  (flycheck-error-list-error                     (:foreground keyword-color :bold t))
  (flycheck-error-list-info                      (:foreground keyword-color :bold t))
  (flycheck-inline-error                         (:foreground keyword-color :background keyword-color :italic t :bold t :height 138))
  (flycheck-inline-info                          (:foreground string-color :background string-color :italic t  :bold t :height 138))
  (flycheck-inline-warning                       (:foreground keyword-color :background number-color :italic t :bold t :height 138))

  ;; indent dots
  (highlight-indent-guides-character-face        (:foreground comment-color))
  (highlight-indent-guides-stack-character-face  (:foreground comment-color))
  (highlight-indent-guides-stack-odd-face        (:foreground comment-color))
  (highlight-indent-guides-stack-even-face       (:foreground comment-color))
  (highlight-indent-guides-stack-character-face  (:foreground comment-color))
  (highlight-indent-guides-even-face             (:foreground comment-color))
  (highlight-indent-guides-odd-face              (:foreground comment-color))

  (highlight-operators-face                      (:foreground number-color))
  (highlight-quoted-symbol                       (:foreground string-color))
  (highlight-numbers-face                        (:foreground number-color))
  (highlight-symbol-face                         (:background background-color :foreground string-color))
  
  ;; ivy
  (ivy-current-match                             (:background highlight-color :foreground background-color :bold t))
  (ivy-action                                    (:background nil :foreground text-color))
  (ivy-grep-line-number                          (:background nil :foreground string-color))
  (ivy-minibuffer-match-face-1                   (:background nil :foreground keyword-color))
  (ivy-minibuffer-match-face-2                   (:background nil :foreground string-color))
  (ivy-minibuffer-match-highlight                (:foreground string-color))
  (ivy-grep-info                                 (:foreground string-color))
  (ivy-grep-line-number                          (:foreground string-color))
  (ivy-confirm-face                              (:foreground keyword-color))

  ;; posframe's
  (ivy-posframe                                  (:background comment-color))
  (ivy-posframe-border                           (:background comment-color))
  
  ;;treemacs
  (treemacs-directory-collapsed-face             (:foreground oniViolet))
  (treemacs-directory-face                       (:foreground oniViolet))
  (treemacs-file-face                            (:foreground oniViolet))

  (treemacs-git-added-face                       (:foreground number-color))
  (treemacs-git-renamed-face                     (:foreground oniViolet))
  (treemacs-git-ignored-face                     (:foreground comment-color))
  (treemacs-git-unmodified-face                  (:foreground oniViolet))
  (treemacs-git-renamed-face                     (:foreground oniViolet))
  (treemacs-git-modified-face                    (:foreground string-color))
   
  ;; lsp and lsp-ui
  (lsp-headerline-breadcrumb-path-error-face     (:underline (:color string-color :style 'wave) :foreground comment-color :background background-color))
  (lsp-headerline-breadcrumb-path-face           (:background background-color))
  (lsp-headerline-breadcrumb-path-hint-face      (:background background-color))
  (lsp-headerline-breadcrumb-path-info-face      (:background background-color))
  (lsp-headerline-breadcrumb-separator-face      (:background background-color))
  (lsp-headerline-breadcrumb-symbols-face        (:background background-color))
  (lsp-headerline-breadcrumb-project-prefix-face (:background background-color))
  (lsp-headerline-breadcrumb-symbols-error-face  (:foreground keyword-color))

  (lsp-ui-doc-background                         (:background background-color :foreground keyword-color))
  (lsp-ui-doc-header                             (:background background-color :foreground keyword-color))
  (lsp-ui-doc-border                             (:background nil :foreground nil))
  (lsp-ui-peek-filename                          (:foreground string-color))
  (lsp-ui-sideline-code-action                   (:foreground number-color))
  (lsp-ui-sideline-current-symbol                (:foreground string-color))
  (lsp-ui-sideline-symbol                        (:foreground string-color))

  ;; dashboard
  (dashboard-heading                             (:foreground string-color :bold t))
  (dashboard-items-face                          (:bold nil :foreground text-color))
  (dashboard-banner-logo-title                   (:bold t :height 200))
  (dashboard-no-items-face                       (:foreground comment-color))

  ;; all-the-icons
  (all-the-icons-dgreen                          (:foreground keyword-color))
  (all-the-icons-green                           (:foreground keyword-color))
  (all-the-icons-dpurple                         (:foreground string-color))
  (all-the-icons-purple                          (:foreground string-color))

  ;; evil
  (evil-ex-lazy-highlight                        (:foreground keyword-color :background keyword-color :bold t))
  (evil-ex-substitute-matches                    (:foreground keyword-color :background keyword-color :bold t))
  (evil-ex-substitute-replacement                (:foreground number-color :strike-through nil :inherit 'evil-ex-substitute-matches))
  (evil-search-highlight-persist-highlight-face  (:background number-color))

  ;; term
  (term                                          (:background background-color :foreground text-color))
  (term-color-blue                               (:background string-color :foreground string-color))
  (term-color-bright-blue                        (:inherit 'term-color-blue))
  (term-color-green                              (:background keyword-color :foreground keyword-color))
  (term-color-bright-green                       (:inherit 'term-color-green))
  (term-color-black                              (:background background-color :foreground text-color))
  (term-color-bright-black                       (:background background-color :foreground background-color))
  (term-color-white                              (:background text-color :foreground text-color))
  (term-color-bright-white                       (:background text-color :foreground text-color))
  (term-color-red                                (:background keyword-color :foreground keyword-color))
  (term-color-bright-red                         (:background string-color :foreground string-color))
  (term-color-yellow                             (:background number-color :foreground number-color))
  (term-color-bright-yellow                      (:background number-color :foreground number-color))
  (term-color-cyan                               (:background string-color :foreground string-color))
  (term-color-bright-cyan                        (:background string-color :foreground string-color))
  (term-color-magenta                            (:background string-color :foreground string-color))
  (term-color-bright-magenta                     (:background string-color :foreground string-color))

  ;; popup
  (popup-face                                    (:inherit 'tooltip))
  (popup-selection-face                          (:inherit 'tooltip))
  (popup-tip-face                                (:inherit 'tooltip))

  ;; anzu
  (anzu-match-1                                  (:foreground keyword-color :background comment-color))
  (anzu-match-2                                  (:foreground number-color :background comment-color))
  (anzu-match-3                                  (:foreground string-color :background comment-color))

  (anzu-mode-line                                (:foreground background-color :background string-color))
  (anzu-mode-no-match	                           (:foreground text-color :background keyword-color))
  (anzu-replace-to                               (:foreground string-color :background string-color))
  (anzu-replace-highlight                        (:foreground keyword-color :background keyword-color :strike-through t))

  ;; ace
  (ace-jump-face-background                      (:foreground keyword-color))
  (ace-jump-face-foreground                      (:foreground keyword-color :background background-color :bold t))
  
  ;; vertico
  (vertico-multiline                             (:background keyword-color))
  (vertico-group-title                           (:background string-color :foreground string-color :bold t))
  (vertico-group-separator                       (:background string-color :foreground string-color :strike-through t))
  (vertico-current                               (:foreground number-color :bold t :italic t :background highlight-color))

  (vertico-posframe-border                       (:background comment-color))
  (vertico-posframe                              (:background comment-color))
  (orderless-match-face-0                        (:foreground string-color :bold t))
  
  (comint-highlight-prompt                       (:background string-color :foreground background-color))
  (completions-annotations                       (:background nil :foreground string-color :italic t))
  (marginalia-file-priv-no                       (:background nil))
  
  ;; hydra
  (hydra-face-amaranth                           (:foreground keyword-color))
  (hydra-face-blue                               (:foreground string-color))
  (hydra-face-pink                               (:foreground string-color))
  (hydra-face-red                                (:foreground keyword-color))
  (hydra-face-teal                               (:foreground string-color))

  ;; centaur-tabs
  (centaur-tabs-active-bar-face                  (:background string-color :foreground text-color))
  (centaur-tabs-selected                         (:background background-color :foreground text-color :bold t))
  (centaur-tabs-selected-modified                (:background background-color :foreground text-color))
  (centaur-tabs-modified-marker-selected         (:background background-color :foreground number-color))
  (centaur-tabs-close-selected                   (:inherit 'centaur-tabs-selected))
  (tab-line                                      (:background background-color))

  (centaur-tabs-unselected                       (:background background-color :foreground comment-color))
  (centaur-tabs-default                          (:background background-color :foreground comment-color))
  (centaur-tabs-unselected-modified              (:background background-color :foreground keyword-color))
  (centaur-tabs-modified-marker-unselected       (:background background-color :foreground comment-color))
  (centaur-tabs-close-unselected                 (:background background-color :foreground comment-color))

  (centaur-tabs-close-mouse-face                 (:background nil :foreground keyword-color))
  (centaur-tabs-default                          (:background keyword-color))
  (centaur-tabs-name-mouse-face                  (:foreground string-color :bold t))

  (git-gutter:added                              (:foreground string-color))
  (git-gutter:deleted                            (:foreground text-color))
  (git-gutter:modified                           (:foreground string-color))

  (diff-hl-margin-change                         (:foreground string-color :background string-color))
  (diff-hl-margin-delete                         (:foreground keyword-color :background keyword-color))
  (diff-hl-margin-insert                         (:foreground comment-color :background string-color))

  (bm-fringe-face                                (:background keyword-color :foreground comment-color))
  (bm-fringe-persistent-face                     (:background keyword-color :foreground comment-color))

  (ansi-color-green                              (:foreground string-color))
  (ansi-color-black                              (:background background-color))
  (ansi-color-cyan                               (:foreground keyword-color))
  (ansi-color-magenta                            (:foreground string-color))
  (ansi-color-blue                               (:foreground string-color))
  (ansi-color-red                                (:foreground keyword-color))
  (ansi-color-white                              (:foreground text-color))
  (ansi-color-yellow                             (:foreground number-color))
  (ansi-color-bright-white                       (:foreground text-color))
  (ansi-color-bright-white                       (:foreground text-color))

  (tree-sitter-hl-face:attribute                 (:foreground number-color))
  (tree-sitter-hl-face:escape                    (:foreground keyword-color))
  (tree-sitter-hl-face:constructor               (:foreground keyword-color :weight 'semi-bold))
  
  (tree-sitter-hl-face:constant                  (:foreground number-color))
  (tree-sitter-hl-face:constant.builtin          (:foreground number-color :weight 'semi-bold))

  (tree-sitter-hl-face:embedded                  (:foreground number-color))
  
  (tree-sitter-hl-face:function                  (:foreground oniViolet))
  (tree-sitter-hl-face:function.builtin          (:foreground keyword-color :italic t :background keyword-color))
  (tree-sitter-hl-face:function.call             (:foreground oniViolet))
  (tree-sitter-hl-face:function.macro            (:foreground keyword-color))
  (tree-sitter-hl-face:function.special          (:foreground oniViolet))
  (tree-sitter-hl-face:function.label            (:foreground number-color))
 
  (tree-sitter-hl-face:method                    (:foreground oniViolet))
  (tree-sitter-hl-face:method.call               (:foreground oniViolet))

  (tree-sitter-hl-face:property                  (:foreground number-color))
  (tree-sitter-hl-face:property.definition       (:foreground text-color :italic t))
  
  (tree-sitter-hl-face:tag                       (:foreground keyword-color))

  (tree-sitter-hl-face:type                      (:foreground yellow-color :weight 'semi-bold))
  (tree-sitter-hl-face:type.argument             (:foreground number-color))
  (tree-sitter-hl-face:type.builtin              (:foreground yellow-color))
  (tree-sitter-hl-face:type.parameter            (:foreground number-color))
  (tree-sitter-hl-face:type.super                (:foreground yellow-color :bold t))

  (tree-sitter-hl-face:variable                  (:foreground text-color :italic t))
  (tree-sitter-hl-face:variable.builtin          (:foreground text-color))
  (tree-sitter-hl-face:variable.parameter        (:foreground text-color :italic t))
  (tree-sitter-hl-face:variable.special          (:foreground number-color))
  (tree-sitter-hl-face:variable.synthesized      (:foreground text-color))

  (tree-sitter-hl-face:number                    (:foreground number-color))
  (tree-sitter-hl-face:operator                  (:foreground number-color :bold t))
  
  (tree-sitter-hl-face:punctuation               (:foreground string-color))
  (tree-sitter-hl-face:punctuation.bracket       (:foreground string-color :bold t))
  (tree-sitter-hl-face:punctuation.delimiter     (:foreground string-color :bold t))
  (tree-sitter-hl-face:punctuation.special       (:foreground keyword-color))

  (tree-sitter-hl-face:case-pattern              (:foreground text-color))
  (tree-sitter-hl-face:variable.synthesized      (:foreground text-color))
  (tree-sitter-hl-face:keyword.compiler          (:foreground keyword-color :bold t :italic t))

  (focus-unfocused                               (:foreground comment-color))

  ;; neotree
  (neo-root-dir-face                           (:foreground oniViolet :weight 'bold))
  (neo-dir-link-face                           (:foreground oniViolet))
  (neo-file-link-face                          (:foreground text-color))
  (neo-expand-btn-face                         (:foreground oniViolet))
  (neo-vc-default-face                         (:foreground text-color))
  (neo-vc-up-to-date-face                      (:foreground text-color))
  (neo-vc-edited-face                          (:foreground string-color))
  (neo-vc-needs-merge-face                     (:foreground keyword-color))
  (neo-vc-unlocked-changes-face                (:foreground number-color))
  (neo-vc-added-face                           (:foreground string-color))
  (neo-vc-removed-face                         (:foreground keyword-color))
  (neo-vc-conflict-face                        (:foreground keyword-color))
  (neo-vc-missing-face                         (:foreground keyword-color))
  (neo-vc-ignored-face                         (:foreground comment-color))
  (neo-vc-unregistered-face                    (:foreground text-color))
  (neo-icon-dir-face                           (:foreground oniViolet))
  (neo-icon-file-face                          (:foreground text-color))
  (neo-icon-tag-directory-face                 (:foreground oniViolet))
  (neo-icon-tag-file-face                      (:foreground text-color))
  (neo-icon-tag-text-face                      (:foreground text-color))
 
 ))

;; Add custom font-lock keyword for function calls
(defun add-function-call-keywords ()
  "Add custom font-lock keywords for function calls."
  (font-lock-add-keywords
   nil
   '(("\\_<\\([a-zA-Z_][a-zA-Z0-9_]*\\)\\s-*("
      (1 'font-lock-function-call-face)))))

(add-hook 'prog-mode-hook 'add-function-call-keywords)

(defface font-lock-function-call-face
  '((t (:foreground "#cfbdfb")))
  "Face for highlighting function calls.")

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'github-light)
;;; github-light-theme.el ends here

