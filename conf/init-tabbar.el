(require 'cl)
(require 'tabbar)
(tabbar-mode 1)

(tabbar-mwheel-mode nil)

(setq tabbar-buffer-groups-function nil)

(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))

(setq tabbar-auto-scroll-flag nil)

(setq tabbar-separator '(1.5))

(set-face-attribute ; color of tabbar
  'tabbar-default nil
   :background "white"
   :family "Inconsolata"
   :height 1.0)
(set-face-attribute ; active tab
  'tabbar-selected nil
   :background "black"
   :foreground "white"
   :weight 'bold
   :box nil)
(set-face-attribute ; inactive tab
  'tabbar-unselected nil
   :background "white"
   :foreground "black"
   :box nil)

(defvar my-tabbar-displayed-buffers
 '("*scratch*" "*Messages*" "*Backtrace*" "*Colors*" "*Faces*" "*vc-")
  "*Regexps matches buffer names always included tabs.")
(defun my-tabbar-buffer-list ()
  "Return the list of buffers to show in tabs.
Exclude buffers whose name starts with a space or an asterisk.
The current buffer and buffers matches `my-tabbar-displayed-buffers'
are always included."
  (let* ((hides (list ?\  ?\*))
         (re (regexp-opt my-tabbar-displayed-buffers))
         (cur-buf (current-buffer))
         (tabs (delq nil
                     (mapcar (lambda (buf)
                               (let ((name (buffer-name buf)))
                                 (when (or (string-match re name)
                                           (not (memq (aref name 0) hides)))
                                   buf)))
                             (buffer-list)))))
    ;; Always include the current buffer.
    (if (memq cur-buf tabs)
        tabs
      (cons cur-buf tabs))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)
