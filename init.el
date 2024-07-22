(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'm-config)
(require 'm-packages)
(require 'm-windows)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(load-prefer-newer t t nil "Customized with use-package emacs")
 '(package-selected-packages '(pinerose-emacs))
 '(package-vc-selected-packages
    '((pinerose-emacs :vc-backend Git :url "https://github.com/konrad1977/pinerose-emacs"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
