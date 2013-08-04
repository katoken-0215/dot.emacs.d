(load "~/.emacs.d/elisp/haskell-mode-13.7/haskell-mode.el")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
