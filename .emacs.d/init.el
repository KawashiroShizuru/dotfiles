
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file :no-error-if-file-missing t)


(require 'init-startup)
(require 'init-keyboard)
(require 'init-elpa)
(require 'init-package)
(require 'init-ui)
