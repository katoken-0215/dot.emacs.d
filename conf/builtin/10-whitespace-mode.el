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

(global-whitespace-mode -1)
(setq whitespace-display-mappings
      '((space-mark   ?\    [?\xb7]     [?.])     ; space
        (space-mark   ?\xA0 [?\xA4]     [?_])     ; hard space
        (newline-mark ?\n   [?\xB6 ?\n] [?$ ?\n]) ; end-of-line
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the character
        ;; ?\xBB at that column followed by a TAB which goes to the next TAB
        ;; column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark   ?\t   [?\xBB ?\t] [?\\ ?\t]) ; tab
        ))

(setq whitespace-line-column 200)

(set-face-attribute 'whitespace-line nil
                    :underline t)

(set-face-attribute 'whitespace-indentation nil
                    :background "grey20"
                    :foreground "darkgrey"
                    :underline t)
