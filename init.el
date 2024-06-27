(load-file (expand-file-name "lisp/config.el" user-emacs-directory))
(load-file (expand-file-name "lisp/packages.el" user-emacs-directory))
(load-file (expand-file-name "lisp/windows.el" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
    '("7a3f3282c4ce1edc3387deb6f72ed31026ab7dfdf4c25ddcfad9008d2a5a5574" default))
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
