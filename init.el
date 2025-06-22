;; init.el --- Emacs configuration entry point -*- lexical-binding: t; -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/core" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/modules" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/langs" user-emacs-directory))
(add-to-list 'custom-theme-load-path (expand-file-name "themes" user-emacs-directory))

(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

(require 'core-packages)
(require 'core-editor)
(require 'core-ui)
(require 'core-keybindings)

(require 'completion)
(require 'windows)
(require 'version-control)

(require 'init-langs)

(message "Emacs configuration loaded successfully!")
