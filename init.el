;;;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(defun add-to-load-path-recompile (dir)
  (add-to-list 'load-path dir)
  (let (save-abbrevs) (byte-recompile-directory dir)))

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-load-path-recompile (expand-file-name "~/.emacs.d/elisp"))
(add-to-load-path-recompile (expand-file-name "~/.emacs.d/elisp/apel"))
(add-to-load-path-recompile (expand-file-name "~/.emacs.d/conf"))

(defun my-fullscreen ()
  (interactive)
  (if (fboundp 'w32-send-sys-command)
      ;; WM_SYSCOMMAND maximaze #xf030
      (w32-send-sys-command #xf030)
    (set-frame-parameter nil 'fullscreen 'fullboth)))

(defun my-non-fullscreen ()
  (interactive)
  (if (fboundp 'w32-send-sys-command)
      ;; WM_SYSCOMMAND restore #xf120
      (w32-send-sys-command #xf120)
    (progn (set-frame-parameter nil 'width 82)
	   (set-frame-parameter nil 'fullscreen 'fullheight))))

(set-language-environment "Japanese")
(global-font-lock-mode t)
(show-paren-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(tool-bar-mode -1)
(setq display-time-24hr-format t)
(setq display-time-string-forms '(24-hours ":" minutes))
(display-time)
(transient-mark-mode nil)
(setq gc-cons-threshold (* 20 gc-cons-threshold))
(setq history-length 100)
(setq tab-width 4)
(setq indent-tabs-mode nil)
(setq which-func-mode t)

;; NTEmacs only
(when (eq window-system 'w32)
  (setq w32-hide-mouse-on-key t)
  (setq w32-hide-mouse-timeout 5000)
  (load "init-ime"))

(when (eq window-system 'x)
  (prefer-coding-system 'utf-8-unix)
  (setq default-buffer-file-coding-system 'utf-8)
  (set-buffer-file-coding-system 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-clipboard-coding-system 'utf-8)
  )

(load "init-backup")
(load "init-color-theme")
(load "init-fonts")

(load "init-ffap")
(load "init-recentf")
(load "init-linum")
(load "init-hl-line+")
(load "init-uniquify")
(load "init-develock")
(load "init-org-mode")
(load "init-taskpaper")
(load "init-moccur")
;; (load "init-cedet")
(load "init-gtags")
(load "init-ipa")
(load "init-sequential-command")
(load "init-open-junk-file")
(load "init-sr-speedbar")
(load "init-summarye")
(load "init-auto-install")
(load "init-package")

(load "init-yasnippet")
(load "init-auto-complete")
(load "init-anything")

;; progmodes
(load "init-c-mode")
(load "init-elisp-mode")
(load "init-python-mode")
(load "init-scheme-mode")
(load "init-ocaml-mode")
(load "init-scala-mode")
(load "init-markdown-mode")
(load "init-makefile")

(load "init-popwin")

(load "init-tabbar")

(load "init-whitespace.el")

(cd "~")

