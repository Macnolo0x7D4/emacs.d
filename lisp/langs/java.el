(use-package java-ts-mode
  :config
  (with-eval-after-load 'clojure-ts-mode
    (add-hook 'java-ts-mode-hook #'eglot-ensure)))
