;; (use-package
;;  eglot
;;  :ensure nil
;;  :config
;;  (add-to-list
;;   'eglot-server-programs `((elixir-mode) . ("language_server.sh"))))

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
         (elixir-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :custom
  (lsp-headerline-breadcrumb-enable nil)
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)

(use-package dap-mode)

(use-package company
  :defer 2
  :diminish
  :custom
  (company-begin-commands '(self-insert-command))
  (company-idle-delay .1)
  (company-minimum-prefix-length 2)
  (company-show-numbers t)
  (company-tooltip-align-annotations 't)
  (global-company-mode t))

(use-package company-box
  :after company
  :diminish
  :hook (company-mode . company-box-mode))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package elixir-mode)

(use-package
 exunit
 :diminish t
 :bind
 ("C-c e ." . exunit-verify-single)
 ("C-c e b" . exunit-verify)
 ("C-c e u a" . exunit-verify-all-in-umbrella)
 ("C-c e a" . exunit-verify-all)
 ("C-c e l" . exunit-rerun))

(use-package typescript-mode
  :mode "\\.ts\\'"
  :config
  (setq typescript-indent-level 2))

;; (use-package js2-mode
;;   :mode "\\.jsx?\\'"
;;   :config
;;   (add-to-list 'magic-mode-alist '("#!/usr/bin/env node" . js2-mode))
;;   (setq js2-mode-show-strict-warnings nil)
;;   (setq-default js-indent-level 2))

(use-package web-mode
  :mode "(\\.\\(html?\\|ejs\\|tsx\\|jsx\\)\\'"
  :config
  (setq-default web-mode-code-indent-offset 2)
  (setq-default web-mode-markup-indent-offset 2)
  (setq-default web-mode-attribute-indent-offset 2))

(unless (package-installed-p 'copilot)
  (package-vc-install "https://github.com/copilot-emacs/copilot.el"))

(use-package copilot
  :config
  (add-hook 'prog-mode-hook 'copilot-mode)
  (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
  (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
  (add-to-list 'warning-suppress-types '(copilot copilot-no-mode-indent)))

(provide 'm-lsp)
