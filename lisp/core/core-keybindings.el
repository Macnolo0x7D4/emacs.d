;; core-keybindings.el --- Global keybindings -*- lexical-binding: t -*-

(macnolo/leader-keys
  "s" '(save-buffer :wk "Save buffer")
  "f ." '(find-file :wk "Find file"))

(macnolo/leader-keys
  "p" '(:ignore t :wk "Projects")
  "p a" '(projectile-add-known-project :wk "Add Project")
  "p d" '(projectile-remove-known-project :wk "Delete Project")
  "f f" '(projectile-find-file :wk "Find file inside project")
  "f p" '(projectile-switch-project :w "Switch Project"))

(macnolo/leader-keys
  "b" '(:ignore t :wk "Bookmarks/Buffers")
  "b b" '(switch-to-buffer :wk "Switch to buffer")
  "b c" '(clone-indirect-buffer :wk "Create indirect buffer copy in a split")
  "b C" '(clone-indirect-buffer-other-window :wk "Clone indirect buffer in new window")
  "b d" '(bookmark-delete :wk "Delete bookmark")
  "b i" '(ibuffer :wk "Ibuffer")
  "b k" '(kill-current-buffer :wk "Kill current buffer")
  "b K" '(kill-some-buffers :wk "Kill multiple buffers")
  "b l" '(list-bookmarks :wk "List bookmarks")
  "b m" '(bookmark-set :wk "Set bookmark")
  "b n" '(next-buffer :wk "Next buffer")
  "b p" '(previous-buffer :wk "Previous buffer")
  "b r" '(revert-buffer :wk "Reload buffer")
  "b R" '(rename-buffer :wk "Rename buffer")
  "b s" '(basic-save-buffer :wk "Save buffer")
  "b S" '(save-some-buffers :wk "Save multiple buffers")
  "b w" '(bookmark-save :wk "Save current bookmarks to bookmark file"))

(macnolo/leader-keys
  "w" '(:ignore t :wk "Windows")
  "w w" '(evil-window-delete :wk "Close window")
  "w s" '(evil-window-split :wk "Horizontal split window")
  "w v" '(evil-window-vsplit :wk "Vertical split window")
  "w h" '(evil-window-left :wk "Window left")
  "w j" '(evil-window-down :wk "Window down")
  "w k" '(evil-window-up :wk "Window up")
  "w l" '(evil-window-right :wk "Window right")
  "w w" '(evil-window-next :wk "Goto next window")
  "w H" '(buf-move-left :wk "Buffer move left")
  "w J" '(buf-move-down :wk "Buffer move down")
  "w K" '(buf-move-up :wk "Buffer move up")
  "w L" '(buf-move-right :wk "Buffer move right"))

(macnolo/leader-keys
  "t" '(:ignore t :wk "Terminal")
  "t e" '(eshell :wk "Eshell")
  "t SPC" '(eshell-command :wk "Eshell Command"))

(macnolo/leader-keys
  "g s" '(magit-status :wk "Git status")
  "g p" '(magit-push :wk "Git push")
  "g P" '(magit-pull :wk "Git pull")
  "g b" '(magit-branch-checkout :wk "Switch branch")
  "g c" '(:ignore t :wk "Create")
  "g c b" '(magit-branch-and-checkout :wk "Create branch and checkout")
  "g c c" '(magit-commit-create :wk "Create commit"))

(macnolo/leader-keys
  "e" '(neotree-toggle :wk "Toggle Neotree")
  "c SPC" '(comment-line :wk "Comment lines"))

(provide 'core-keybindings)
