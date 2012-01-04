(require 'sequential-command)
;; (require 'sequential-command-config)

(define-sequential-command seq-home
  beginning-of-line beginning-of-buffer seq-return)
(define-sequential-command seq-end
  end-of-line end-of-buffer seq-return)
(global-set-key "\C-a" 'seq-home)
(global-set-key "\C-e" 'seq-end)

