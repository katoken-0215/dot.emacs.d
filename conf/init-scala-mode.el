(add-to-list 'load-path "~/.emacs.d/elisp/scala-mode")
(require 'scala-mode-auto)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-hook 'scala-mode-hook
	  (lambda ()
	    (whitespace-mode 1)))
