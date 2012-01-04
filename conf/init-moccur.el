(require 'color-moccur)
(setq moccur-split-word t)
(setq *moccur-buffer-name-exclusion-list*
      '("\\~$"
	"\\.svn\\/"
	".+TAGS.+"
	"*Completions*"
	"*Messages*"
	"newsrc.eld"
	" *migemo*" ".bbdb"
	))
