(setq scheme-program-name "c:/Program Files (x86)/Gauche/bin/gosh")
(require 'cmuscheme)

;; �E�B���h�E���Q�ɕ����āA
;; �����gosh�C���^�v���^�����s����R�}���h���`���܂��B
(defun scheme-other-window ()
  "Run scheme on other window"
  (interactive)
  (switch-to-buffer-other-window
   (get-buffer-create "*scheme*"))
  (run-scheme scheme-program-name))
;; ���̃R�}���h��Ctrl-cS�ŌĂяo���܂��B
(define-key global-map
  "\C-cS" 'scheme-other-window)

;; ���O/����̊��ʂɑΉ����銇�ʂ����点�܂��B
(show-paren-mode)
