(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/mmm-mako"))
(require 'mmm-mako)

(add-to-list 'auto-mode-alist '("\\.mako\\'" . html-mode))
(mmm-add-mode-ext-class 'html-mode "\\.mako\\'" 'mako)
