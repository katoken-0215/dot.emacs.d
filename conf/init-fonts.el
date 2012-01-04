(when (and (eq window-system 'x) (>= emacs-major-version 23))
  (progn
    (set-frame-font "Ume Gothic-8")
    (set-fontset-font (frame-parameter nil 'font)
		      'japanese-jisx0208
		      '("Ume Gothic" . "unicode-bmp")))
  (add-to-list 'default-frame-alist '(font . "Ume Gothic-8")))

(when (eq window-system 'w32)
  ;; IME�ϊ����t�H���g�̐ݒ�i�e�X�g�o�[�W�����̂݁j
  (setq w32-ime-font-face "MigMix 1M 8")
  (setq w32-ime-font-height 10)
  (set-face-attribute 'default nil :family "Consolas" :height 80)
  (setq w32-enable-synthesized-fonts t)
  (setq default-frame-alist initial-frame-alist)
  ;; ;; �W���t�H���g�̐ݒ�
  ;; (set-frame-font "MigMix 1M 8")
  ;; (add-to-list 'default-frame-alist '(font . "MigMix 1M 8"))
  )
