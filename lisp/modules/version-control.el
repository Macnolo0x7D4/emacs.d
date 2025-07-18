;; version-control.el --- Version control integration -*- lexical-binding: t -*-

(use-package magit
  :commands (magit-status magit-get-current-branch)
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(provide 'version-control)
