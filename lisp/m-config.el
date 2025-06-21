(use-package
  emacs
  :ensure nil
  :hook (after-init . (lambda () (setq gc-cons-threshold (* 2 1000 1000))))
  :custom

  (user-full-name "Manuel Diaz")

  (gc-cons-threshold (* 20 1024 1024))
  (read-process-output-max (* 1024 1024))

  (load-prefer-newer t)
  (bidi-paragraph-direction 'left-to-right)
  (initial-scratch-message "")

  (backup-directory-alist `((".*" . ,temporary-file-directory)))
  (auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
  (create-lockfiles nil)
  (fill-column 100)
  (inhibit-startup-screen t)

  (line-spacing 0.15)

  (indent-tabs-mode nil)
  (lisp-indent-function nil)
  (lisp-indent-offset 2)
  (use-short-answers t)

  ;; (major-mode-remap-alist
  ;;  '((yaml-mode . yaml-ts-mode)
  ;;    (bash-mode . bash-ts-mode)
  ;;    (js2-mode . js-ts-mode)
  ;;    (typescript-mode . typescript-ts-mode)
  ;;    (java-mode . java-ts-mode)
  ;;    (json-mode . json-ts-mode)
  ;;    (kotlin-mode . kotlin-ts-mode)
  ;;    (css-mode . css-ts-mode)
  ;;    (python-mode . python-ts-mode)
  ;;    (rust-mode . rust-ts-mode)
  ;;    (elixir-mode . elixir-ts-mode)))

  :init
  ;; (load custom-file 'noerror)
  (setq-default bidi-paragraph-direction 'left-to-right)
  (prefer-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (global-hl-line-mode +1)

  (set-face-attribute 'default nil :font "BerkeleyMono Nerd Font" :height 130 :weight 'medium)
  (set-face-attribute 'variable-pitch nil :font "BerkeleyMono Nerd Font" :height 130 :weight 'medium)
  (set-face-attribute 'fixed-pitch nil :font "BerkeleyMono Nerd Font" :height 130 :weight 'medium)

  :config
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)

  (setq display-line-numbers-type 'relative)
  (setq-default tab-width 2)

  (global-display-line-numbers-mode 1)
  (global-visual-line-mode t)

  (setq scroll-margin 8)
  (setq scroll-conservatively 101)

  (column-number-mode t)
  (size-indication-mode t)
  (delete-selection-mode 1)
  (fset 'display-startup-echo-area-message #'ignore))

(provide 'm-config)
