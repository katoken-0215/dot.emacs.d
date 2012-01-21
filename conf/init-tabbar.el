;; @ tabbar
(require 'cl)
(require 'tabbar)

;; scratch buffer �ȊO���܂Ƃ߂ă^�u�ɕ\������
(setq tabbar-buffer-groups-function
      (lambda (b) (list "All Buffers")))
(setq tabbar-buffer-list-function
      (lambda ()
	(remove-if
	 (lambda(buffer)
	   (unless (string-match (buffer-name buffer) "\\(*scratch*\\|*Apropos*\\|*shell*\\|*eshell*\\|*Customize\\)")
	     (find (aref (buffer-name buffer) 0) " *"))
	   )
	 (buffer-list))))

;; Color Settings
(set-face-attribute
  'tabbar-default-face nil
  :background "gray90") ;�o�[���̂̐F
(set-face-attribute
 'tabbar-separator-face nil
 :height 0.7)

(set-face-attribute ;��A�N�e�B�u�ȃ^�u
 'tabbar-unselected-face nil
 :background "gray90"
 :foreground "black"
 :box nil)
(set-face-attribute ;�A�N�e�B�u�ȃ^�u
 'tabbar-selected-face nil
 :background "black"
 :foreground "white"
 :box nil)


;; tabbar��L���ɂ���
(tabbar-mode 1)

;; �{�^�����V���v���ɂ���
(setq tabbar-home-button-enabled "")
(setq tabbar-scroll-right-button-enabled "")
(setq tabbar-scroll-left-button-enabled "")
(setq tabbar-scroll-right-button-disabled "")
(setq tabbar-scroll-left-button-disabled "")

;; Ctrl-Tab, Ctrl-Shift-Tab �Ń^�u��؂�ւ���
(dolist (func '(tabbar-mode tabbar-forward-tab tabbar-forward-group tabbar-backward-tab tabbar-backward-group))
  (autoload func "tabbar" "Tabs at the top of buffers and easy control-tab navigation"))
(defmacro defun-prefix-alt (name on-no-prefix on-prefix &optional do-always)
  `(defun ,name (arg)
     (interactive "P")
     ,do-always
     (if (equal nil arg)
	 ,on-no-prefix
       ,on-prefix)))
(defun-prefix-alt shk-tabbar-next (tabbar-forward-tab) (tabbar-forward-group) (tabbar-mode 1))
(defun-prefix-alt shk-tabbar-prev (tabbar-backward-tab) (tabbar-backward-group) (tabbar-mode 1))
(global-set-key [(control tab)] 'shk-tabbar-next)
(global-set-key [(control shift tab)] 'shk-tabbar-prev)
