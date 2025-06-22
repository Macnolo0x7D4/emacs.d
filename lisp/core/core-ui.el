;; core-ui.el --- UI configuration -*- lexical-binding: t -*-

(use-package all-the-icons
  :if (display-graphic-p))

(use-package all-the-icons-dired
  :hook (dired-mode . (lambda () (all-the-icons-dired-mode t))))

(use-package neotree
  :config
  (setq neo-smart-open t
        neo-show-hidden-files t
        neo-window-width 35
        neo-window-fixed-size nil
        inhibit-compacting-font-caches t
        projectile-switch-project-action 'neotree-projectile-action
        neo-theme (if (display-graphic-p) 'icons 'arrow)) 
  (add-hook 'neo-after-create-hook
            #'(lambda (_)
                (with-current-buffer (get-buffer neo-buffer-name)
                  (setq truncate-lines t)
                  (setq word-wrap nil)
                  (make-local-variable 'auto-hscroll-mode)
                  (setq auto-hscroll-mode nil)))))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 30
        doom-modeline-bar-width 5
        doom-modeline-persp-name t
        doom-modeline-persp-icon t))

(use-package dashboard
  :config
  (add-hook 'after-init-hook #'dashboard-insert-startupify-lists)
  (add-hook 'after-init-hook #'dashboard-initialize)
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-center-content t)
  (setq dashboard-projects-backend 'projectile)
  (setq dashboard-items '((recents   . 5)
                          (bookmarks . 5)
                          (projects  . 5)))
  (dashboard-setup-startup-hook))

(use-package catppuccin-theme
  :config
  (setq catppuccin-flavor 'mocha) 
  (load-theme 'catppuccin :no-confirm))

(defun setup-fonts ()
  (set-face-attribute 'default nil :font "BerkeleyMono Nerd Font" :height 130 :weight 'medium)
  (set-face-attribute 'variable-pitch nil :font "BerkeleyMono Nerd Font" :height 130 :weight 'medium)
  (set-face-attribute 'fixed-pitch nil :font "BerkeleyMono Nerd Font" :height 130 :weight 'medium))

(if (daemonp)
    (add-hook 'server-after-make-frame-hook #'setup-fonts)
  (setup-fonts))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-visual-line-mode t)
(column-number-mode t)
(size-indication-mode t)
(delete-selection-mode 1)
(fset 'display-startup-echo-area-message #'ignore)

(setq scroll-margin 8)
(setq scroll-conservatively 101)

(provide 'core-ui)
