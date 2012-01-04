(eval-when-compile
  (require 'auto-complete))
(eval-when-compile
  (require 'auto-complete-config))

(require 'yasnippet)

(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

(setq ac-auto-show-menu t)
(setq ac-candidate-menu-height 16)
(setq ac-candidate-max 16)

;; (ac-config-default)

;; gtags

(defun ac-my-gtags-candidate ()
  (ignore-errors
    (split-string (shell-command-to-string (format "global -cq %s" ac-prefix)) "\n")))

(ac-define-source my-gtags
  '((candidates . ac-my-gtags-candidate)
    (candidate-face . ac-gtags-candidate-face)
    (selection-face . ac-gtags-selection-face)
    (requires . 3)
    (symbol . "s")))


(setq ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (setq ac-sources (append '(ac-source-semantic) ac-sources))
	    (setq ac-sources (append '(ac-source-my-gtags) ac-sources))
;	    (setq ac-sources (append '(ac-source-yasnippet) ac-sources))
	    ))
(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)

