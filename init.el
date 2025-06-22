(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'custom-theme-load-path (expand-file-name "lisp/themes" user-emacs-directory))

(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

(require 'm-config)
(require 'm-packages)
(require 'm-windows)
(require 'm-langs)
