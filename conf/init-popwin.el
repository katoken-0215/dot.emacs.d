(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

;; Anythin
(setq anything-samewindow nil)
(push '("*anything*" :height 25) popwin:special-display-config)