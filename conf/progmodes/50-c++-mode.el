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

(add-to-list 'auto-mode-alist '("\\.C$"  . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cc$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp$". c++-mode))
(add-to-list 'auto-mode-alist '("\\.hh$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h$"  . c++-mode))

(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-offset 'innamespace 0)
             (c-set-offset 'inextern-lang 0)
             (c-set-offset 'case-label 0)
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq tab-always-indent t)
             (show-paren-mode 1)
             (whitespace-mode 1)
             ))

(defvar c++-command "c++"
  "command to compile")

(add-hook 'c++-mode-hook
          '(lambda ()
             (global-set-key [S-f5] 'compile)
             (global-set-key [f5] 'recompile)))

(add-hook 'c++-mode-hook
          '(lambda ()
             (auto-complete-mode 1)))

;; Setup auto-insert for .h
(define-auto-insert "\\.h$"
  (lambda ()
    (yas-minor-mode 1)
    (insert "auto-insert-header")
    (yas-expand)))
