;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
;; default  term
(setq explicit-shell-file-name "/bin/zsh")
;; (load! "bindings")

(def-package! org-super-agenda
  :after org-super-agenda
  :init
  (setq org-super-agenda-mode '((:name "Today"
                                  :time-grid t
                                  :scheduled today)
                           (:name "Due today"
                                  :deadline today)
                           (:name "Important"
                                  :priority "A")
                           (:name "Overdue"
                                  :deadline past)
                           (:name "Due soon"
                                  :deadline future)
                           (:name "Big Outcomes"
                                  :tag "bo")))
  :config
  (org-super-agenda-mode))

;; TS
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (flycheck-add-next-checker 'typescript-tide '(t . typescript-tslint) 'append)
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))

;; end TS

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
(when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

;; FROM https://github.com/Brettm12345/doom-emacs-literate-config/blob/master/config.org#uidoom
(setq display-line-numbers-type 'relative)

(after! highlight-indent-guides
  (setq highlight-indent-guides-method 'character))

;; Highlight trailing whitespace
(setq show-trailing-whitespace t)

;; Set the scale factor for all-the-icons
(after! all-the-icons
  (setq all-the-icons-scale-factor 1.0))

;; Set default indentation offset to 2 spaces
(after! js2-mode (setq js2-basic-offset 2))

;; font size
(setq doom-font (font-spec :family "Fira Code" :size 14))

;; company
;; Setup company ui
(after! company
  (setq company-tooltip-limit 5
        company-tooltip-minimum-width 80
        company-tooltip-minimum 5
        company-backends
        '(company-capf company-dabbrev company-files company-yasnippet)
        company-global-modes '(not comint-mode erc-mode message-mode help-mode gud-mode)))

;; tree
(after! doom-themes
  (setq doom-neotree-file-icons t))

(after! neotree
  (setq neo-smart-open t))

;; theme
(load-theme 'doom-city-lights t)
