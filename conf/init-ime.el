(when (eq window-system 'w32)
  (set-keyboard-coding-system 'japanese-shift-jis)


  (setq default-input-method "W32-IME")

  (w32-ime-initialize)

  (add-hook 'input-method-activate-hook
	    (lambda() (set-cursor-color "green")))
  (add-hook 'input-method-inactivate-hook
	    (lambda() (set-cursor-color "red")))

  (setq w32-ime-buffer-switch-p nil)
  )
