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
