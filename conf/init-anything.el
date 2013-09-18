(require 'anything-startup)

(require 'anything-c-moccur)
(global-set-key (kbd "M-o") 'anything-c-moccur-occur-by-moccur)
(global-set-key (kbd "C-M-o") 'anything-c-moccur-dmoccur)
(global-set-key (kbd "C-c a") 'anything)
(add-hook 'dired-mode-hook
          '(lambda ()
             (local-set-key (kbd "O") 'anything-c-moccur-dired-do-moccur-by-moccur)))

(global-set-key (kbd "M-y") 'anything-show-kill-ring)
