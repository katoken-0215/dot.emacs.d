(add-to-list 'load-path "~/.emacs.d/elisp/yasnippet")
(setq yas-snippet-dirs "~/.emacs.d/elisp/yasnippet/snippets")
(require 'yasnippet)
(yas-global-mode 1)

;;; Take code from http://www.emacswiki.org/emacs-es/yasnippet-config.el

;;;; oneshot snippet
(defvar yas/oneshot-snippet nil)
(defun yas/register-oneshot-snippet (s e)
  (interactive "r")
  (setq yas/oneshot-snippet (buffer-substring-no-properties s e))
  (delete-region s e)
  (yas/expand-oneshot-snippet)
  (message "%s" (substitute-command-keys "Press \\[yas/expand-oneshot-snippet] to expand.")))

(defun yas/expand-oneshot-snippet ()
  (interactive)
  (yas/expand-snippet yas/oneshot-snippet))

(defun yas/oneshot-snippet ()
  "Register/expand oneshot snippet.

If `transient-mark-mode' is enabled and region is selected,
register the region as oneshot snippet, Otherwise expand it."
  (interactive)
  (if (region-active-p)
      (yas/register-oneshot-snippet (region-beginning) (region-end))
    (yas/expand-oneshot-snippet)))