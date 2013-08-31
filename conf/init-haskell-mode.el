(add-to-list 'load-path "~/.emacs.d/elisp/haskell-mode-13.7")
(load-library "haskell-mode")

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
