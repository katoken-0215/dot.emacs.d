(when (and (eq window-system 'x) (>= emacs-major-version 23))
  (progn
    (set-frame-font "Ume Gothic-8")
    (set-fontset-font (frame-parameter nil 'font)
		      'japanese-jisx0208
		      '("Ume Gothic" . "unicode-bmp")))
  (add-to-list 'default-frame-alist '(font . "Ume Gothic-8")))

(when (eq window-system 'w32)
  ;; IME変換時フォントの設定（テストバージョンのみ）
  (setq w32-ime-font-face "MigMix 1M 10")
  (setq w32-ime-font-height 10)
  (set-frame-font "Migu 1M 10")
  (set-default-font "Migu 1M 10")
  (add-to-list 'default-frame-alist '(font . "Migu 1M 10"))
  )