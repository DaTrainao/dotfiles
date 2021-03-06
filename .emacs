(add-to-list 'load-path "~/.emacs.d/cl-lib/")
(add-to-list 'load-path "~/.emacs.d/powerline/")
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/")
(electric-pair-mode 1)
(global-linum-mode 1)
(menu-bar-mode -1)
(custom-set-variables '(linum-format (quote "%4d ")))

(setq-default indent-tabs-mode t)
(setq-default tab-width 3)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

(require 'color-theme)
(load-theme 'deep-thought t)
(color-theme-initialize)
(load-theme 'deep-thought t)

(require 'cl-lib)
(require 'powerline)
(powerline-default-theme)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("aa5fbc97aabe1a1fcacfddd638659c2a02f47d40399bd978c9ad563e81d7a537" default)))
 '(safe-local-variable-values (quote ((eval when (fboundp (quote rainbow-mode)) (rainbow-mode 1)) (eval when (require (quote rainbow-mode) nil t) (rainbow-mode 1))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
	 (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)
