;;; License
;;
;; This is free and unencumbered software released into the public domain.
;; 
;; Anyone is free to copy, modify, publish, use, compile, sell, or
;; distribute this software, either in source code form or as a compiled
;; binary, for any purpose, commercial or non-commercial, and by any
;; means.
;; 
;; In jurisdictions that recognize copyright laws, the author or authors
;; of this software dedicate any and all copyright interest in the
;; software to the public domain. We make this dedication for the benefit
;; of the public at large and to the detriment of our heirs and
;; successors. We intend this dedication to be an overt act of
;; relinquishment in perpetuity of all present and future rights to this
;; software under copyright law.
;; 
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;; IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
;; OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
;; ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
;; OTHER DEALINGS IN THE SOFTWARE.
;; 
;; For more information, please refer to [http://unlicense.org]

(package-require-package 'helm)

(require 'helm-config)
(require 'helm-files)

(setq helm-ff-auto-update-initial-value nil)
(setq helm-ff-transformer-show-only-basename nil)

(defvar helm-find-files-other-frame-map
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map helm-find-files-map)
    (define-key map (kbd "<RET>") 'helm-ff-run-switch-other-frame)
    (delq nil map)))

(defvar helm-find-files-other-window-map
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map helm-find-files-map)
    (define-key map (kbd "<RET>") 'helm-ff-run-switch-other-window)
    (delq nil map)))

(defun helm-find-files-other-frame (&optional arg)
  (interactive)
  (let ((original-map helm-find-files-map))
    (setq helm-find-files-map helm-find-files-other-frame-map)
    (helm-find-files arg)
    (setq helm-find-files-map original-map)))

(defun helm-find-files-other-window (&optional arg)
  (interactive)
  (let ((original-map helm-find-files-map))
    (setq helm-find-files-map helm-find-files-other-frame-map)
    (helm-find-files arg)
    (setq helm-find-files-map original-map)))

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x 5 f") 'helm-find-files-other-frame)
(global-set-key (kbd "C-x 5 C-f") 'helm-find-files-other-frame)
(global-set-key (kbd "C-x 4 f") 'helm-find-files-other-window)
(global-set-key (kbd "C-x 4 C-f") 'helm-find-files-other-frame)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)

(define-key isearch-mode-map (kbd "C-o") 'helm-occur-from-isearch)

(eval-after-load "popwin"
  '(progn
     (push '("^\*helm .+\*$" :height 25 :regexp t) popwin:special-display-config)))
