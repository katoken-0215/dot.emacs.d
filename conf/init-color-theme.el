(if (string-match "^24" emacs-version)
    (load-theme 'tango-dark)
    (progn
      (require 'color-theme)
      (load-library "color-theme-tango-mod")
      (color-theme-tango)))



