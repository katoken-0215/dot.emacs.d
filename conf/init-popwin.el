(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

;; Anythin
(setq anything-samewindow nil)
(push '("\\*anything.+\\*" :height 30 :regexp t) popwin:special-display-config)
(push '("\\*compilation.+\\*" :height 30 :regexp t) popwin:special-display-config)
