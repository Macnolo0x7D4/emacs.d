(use-package clojure-ts-mode
  :config
  (with-eval-after-load 'clojure-ts-mode
    (add-hook 'clojure-ts-mode-hook #'smartparens-mode)
    (add-hook 'clojure-ts-mode-hook #'rainbow-delimiters-mode)))

(use-package cider)

(provide 'm-langs-clojure)
