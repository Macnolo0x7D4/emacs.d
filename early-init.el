;(setq gc-cons-threshold (* 50 1000 1000))

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;(unless package-archive-contents
  ;(package-refresh-contents))

(setq use-package-always-ensure t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))
