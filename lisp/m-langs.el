(add-to-list 'load-path (expand-file-name "lisp/langs" user-emacs-directory))

(message "hola")

(require 'm-langs-elixir)
(require 'm-langs-clojure)

(provide 'm-langs)
