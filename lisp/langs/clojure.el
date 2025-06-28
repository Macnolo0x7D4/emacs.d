;; clojure.el --- Clojure configuration -*- lexical-binding: t -*-

(use-package clojure-ts-mode
  :config
  (with-eval-after-load 'clojure-ts-mode
    (add-hook 'clojure-ts-mode-hook #'smartparens-mode)
    (add-hook 'clojure-ts-mode-hook #'rainbow-delimiters-mode)
    (add-hook 'clojure-ts-mode-hook #'eglot-ensure)))

(use-package cider
  :after clojure-ts-mode)

(provide 'clojure)
