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

(provide 'm-langs-elixir)
