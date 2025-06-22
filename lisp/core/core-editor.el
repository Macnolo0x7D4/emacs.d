;; core-editor.el --- Editor configuration -*- lexical-binding: t -*-

(use-package
 emacs
 :ensure nil
 :hook (after-init . (lambda () (setq gc-cons-threshold (* 2 1000 1000))))
 :custom
 (user-full-name "Manuel Diaz")

 (gc-cons-threshold (* 20 1024 1024))
 (read-process-output-max (* 1024 1024))

 (load-prefer-newer t)
 (backup-directory-alist `((".*" . ,temporary-file-directory)))
 (auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
 (create-lockfiles nil)
 
 (bidi-paragraph-direction 'left-to-right)
 (initial-scratch-message "")
 (fill-column 100)
 (inhibit-startup-screen t)
 (line-spacing 0.15)

 (indent-tabs-mode nil)
 (tab-width 2)
 (lisp-indent-function nil)
 (lisp-indent-offset 2)
 (use-short-answers t)

 (major-mode-remap-alist
  '((yaml-mode . yaml-ts-mode)
    (bash-mode . bash-ts-mode)
    (js2-mode . js-ts-mode)
    (typescript-mode . typescript-ts-mode)
    (java-mode . java-ts-mode)
    (json-mode . json-ts-mode)
    (kotlin-mode . kotlin-ts-mode)
    (css-mode . css-ts-mode)
    (python-mode . python-ts-mode)
    (rust-mode . rust-ts-mode)
    (elixir-mode . elixir-ts-mode)))

 :init
 (setq-default bidi-paragraph-direction 'left-to-right)
 (prefer-coding-system 'utf-8)
 (set-default-coding-systems 'utf-8)
 (set-terminal-coding-system 'utf-8)
 (set-keyboard-coding-system 'utf-8)
 (global-hl-line-mode +1)

 :config
 (setq custom-file (concat user-emacs-directory "custom.el"))
 (load custom-file 'noerror))

(use-package treesit-auto
  :config
  (global-treesit-auto-mode))

(use-package smartparens
  :hook (prog-mode . smartparens-mode))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'core-editor)
