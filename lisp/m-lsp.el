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

(use-package clojure-ts-mode)

(use-package elixir-ts-mode
  :config
  (with-eval-after-load 'elixir-ts-mode
    (add-hook 'elixir-ts-mode-hook #'eglot-ensure)
    (add-hook 'elixir-ts-mode-hook
              (lambda ()
                (push '(">=" . ?\u2265) prettify-symbols-alist)
                (push '("<=" . ?\u2264) prettify-symbols-alist)
                (push '("!=" . ?\u2260) prettify-symbols-alist)
                (push '("==" . ?\u2A75) prettify-symbols-alist)
                (push '("=~" . ?\u2245) prettify-symbols-alist)
                (push '("<-" . ?\u2190) prettify-symbols-alist)
                (push '("->" . ?\u2192) prettify-symbols-alist)
                (push '("|>" . ?\u25B7) prettify-symbols-alist)))
    (add-hook 'elixir-ts-mode-hook
              (lambda ()
                (add-hook 'before-save-hook #'eglot-format nil t)))))

(provide 'm-lsp)
