;; completion.el --- Completion frameworks -*- lexical-binding: t -*-

(use-package eglot
  :ensure nil
  :config
  (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-at-point-mode t)
  (add-to-list 'eglot-server-programs
    `((elixir-ts-mode elixir-mode) . (,(executable-find "elixir-ls"))))
  (add-to-list 'eglot-server-programs
               `((clojure-ts-mode) . (,(executable-find "clojure-lsp")))))

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

(use-package counsel
  :after ivy
  :config (counsel-mode))

(use-package ivy
  :bind
  (("C-c C-r" . ivy-resume)
   ("C-x B" . ivy-switch-buffer-other-window))
  :custom
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq enable-recursive-minibuffers t)
  :config
  (ivy-mode))

(use-package all-the-icons-ivy-rich
  :ensure t
  :custom (all-the-icons-ivy-rich-mode 1))

(use-package ivy-rich
  :after ivy
  :ensure t
  :custom
  (ivy-rich-mode 1)
  (ivy-virtual-abbreviate 'full
                          ivy-rich-switch-buffer-align-virtual-buffer t
                          ivy-rich-path-style 'abbrev)
  :config
  (ivy-set-display-transformer 'ivy-switch-buffer
                               'ivy-rich-switch-buffer-transformer))

(provide 'completion)
