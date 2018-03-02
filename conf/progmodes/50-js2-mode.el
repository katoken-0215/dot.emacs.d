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

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq tab-width 2)
             (setq js2-basic-offset 2)
             (setq-default js2-basic-offset 2)
             (setq js2-mode-show-parse-errors nil)
             (setq js2-mode-show-strict-warnings nil)
             (setq tab-always-indent t)
             (show-paren-mode 1)
             (whitespace-mode 1)
             (highlight-symbol-mode 1)
             (electric-layout-mode -1)
             ))

;; auto-complete
(add-hook 'js2-mode-hook
          '(lambda ()
             (auto-complete-mode 1)
             (setq ac-sources (append '(ac-source-dabbrev ac-source-yasnippet) ac-sources))
             ))
;; (add-hook 'js2-mode-hook 'ac-js2-mode)  ;; ac-js2

;; flycheck
(add-hook 'js2-mode-hook
          '(lambda ()
             (setq flycheck-disabled-checkers '(javascript-jshint))
             (setq flycheck-checker 'javascript-eslint)
             (flycheck-mode 1)
             ))

;; rainbow-delimiters
(add-hook 'js2-mode-hook
          '(lambda ()
             (rainbow-delimiters-mode-enable)))

;; js-doc
(require 'js-doc)

(add-hook 'js2-mode-hook
          '(lambda ()
             (define-key js2-mode-map (kbd "C-c i") 'js-doc-insert-function-doc)))
