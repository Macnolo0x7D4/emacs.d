(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'custom-theme-load-path (expand-file-name "lisp/themes" user-emacs-directory))

(require 'm-config)
(require 'm-packages)
(require 'm-windows)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(load-prefer-newer t t nil "Customized with use-package emacs")
 '(package-selected-packages
    '(ivy-rich all-the-icons-ivy-rich counsel dashboard doom-modeline projectile autothemer magit neotree all-the-icons-dired all-the-icons which-key general evil-collection evil copilot web-mode typescript-mode exunit alchemist yasnippet company-box company dap-mode lsp-ivy lsp-ui lsp-mode diminish))
 '(package-vc-selected-packages
    '((copilot :vc-backend Git :url "https://github.com/copilot-emacs/copilot.el"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
