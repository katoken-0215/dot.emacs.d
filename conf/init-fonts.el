
(when (and (eq window-system 'x) (>= emacs-major-version 23))
  (progn
    (set-frame-font "TakaoGothic-8")
    (set-fontset-font (frame-parameter nil 'font)
		      'japanese-jisx0208
		      '("TakaoGothic" . "unicode-bmp")))
  (add-to-list 'default-frame-alist '(font . "TakaoGothic-8")))
