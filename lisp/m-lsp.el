(use-package
  eglot
  :config
  (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-at-point-mode t)
  (add-to-list
    'eglot-server-programs
    `((elixir-mode) . (,(expand-file-name "lsp/elixir/language_server.sh" user-emacs-directory)))))

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

(use-package eldoc-box)

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package elixir-mode
  :config
  (add-hook 'elixir-format-hook
    (lambda () (if (projectile-project-p)
                 (setq elixir-format-arguments
                   (list "--dot-formatter"
                     (concat (locate-dominating-file buffer-file-name ".formatter.exs") ".formatter.exs")))
                 (setq elixir-format-arguments nil))))
  (add-hook 'elixir-mode-hook
    (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))
  (add-hook 'elixir-mode-hook 'eglot-ensure))

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

(provide 'm-lsp)
