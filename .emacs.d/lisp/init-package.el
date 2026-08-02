
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

(use-package restart-emacs)

(use-package drag-stuff
  :bind (("<M-up>". drag-stuff-up)
	 ("<M-down>". drag-stuff-down)))

(provide 'init-package)
