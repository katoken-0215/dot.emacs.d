(setq explicit-shell-file-name "cmdproxy.exe")
(setq shell-file-name "cmdproxy.exe")

(add-hook 'shell-mode-hook
	  (lambda () (set-buffer-process-coding-system 'sjis-dos 'sjis)))
