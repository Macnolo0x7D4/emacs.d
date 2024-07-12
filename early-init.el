(setq gc-cons-threshold (* 50 1000 1000))

(customize-set-variable 'load-prefer-newer noninteractive)

(require 'package)
(require 'use-package-ensure)

(add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(customize-set-variable
 'package-archive-priorities
 '(("gnu" . 99)
   ("nongnu" . 80)
   ("stable" . 70)
   ("melpa" . 0)))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(setq use-package-always-ensure t)

(use-package diminish)
(use-package bind-key)

(when (featurep 'native-compile)
  ;; Silence compiler warnings as they can be pretty disruptive
  (setq native-comp-async-report-warnings-errors nil)

  ;; Make native compilation happens asynchronously
  (setq native-comp-deferred-compilation t)

  ;; Set the right directory to store the native compilation cache
  ;; NOTE the method for setting the eln-cache directory depends on the emacs version
  (when (fboundp 'startup-redirect-eln-cache)
    (if (version< emacs-version "29")
        (add-to-list
         'native-comp-eln-load-path
         (convert-standard-filename (expand-file-name "var/eln-cache/" user-emacs-directory)))
      (startup-redirect-eln-cache
       (convert-standard-filename (expand-file-name "var/eln-cache/" user-emacs-directory)))))

  (add-to-list 'native-comp-eln-load-path (expand-file-name "eln-cache/" user-emacs-directory)))

(customize-set-variable 'initial-major-mode 'fundamental-mode)

(add-to-list 'default-frame-alist '(fullscreen . maximized))
