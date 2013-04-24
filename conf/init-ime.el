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

(when (eq window-system 'x)
  (require 'mozc)  ; or (load-file "/path/to/mozc.el")
  (set-language-environment "Japanese")
  (setq default-input-method "japanese-mozc")
  (global-set-key [zenkaku-hankaku] 'mozc-mode))
