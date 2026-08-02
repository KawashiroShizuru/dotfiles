(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)

(global-set-key
 (kbd "C-c r")
 (lambda ()
   (interactive)
   (load (expand-file-name "init.el" user-emacs-directory))))

(provide 'init-startup)
