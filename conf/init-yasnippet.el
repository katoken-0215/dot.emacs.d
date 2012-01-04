(add-to-load-path-recompile (expand-file-name "~/.emacs.d/elisp/plugins/yasnippet-0.6.1c"))
(setq yas/trigger-key "TAB")
(require 'yasnippet-config)
(yas/setup "~/.emacs.d/elisp/plugins/yasnippet-0.6.1c")

;; (require 'yasnippet-bundle)
;; (require 'yasnippet) ;; not yasnippet-bundle
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/elisp/plugins/yasnippet-0.6.1c/snippets")