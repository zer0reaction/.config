;; Simple C mode
(add-to-list 'load-path "~/.emacs.local")
(require 'simpc-mode)
(require 'azure-theme)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

;; Behaviour in files
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(setq-default require-final-newline t)

;; Emacs behaviour and appearance
(setq-default make-backup-files nil)
(setq-default inhibit-startup-screen t)
(setq-default whitespace-style '(face trailing empty tabs lines))
(setq-default mouse-wheel-progressive-speed nil)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-;") 'save-buffer)
(add-to-list 'default-frame-alist '(font . "Hack-18"))

;; Modes
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-whitespace-mode)
(global-auto-revert-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(azure))
 '(custom-safe-themes
   '("8bc22da044fd2e10235c0793af5cdef4236bff54fc149995f439404c2d3104d3"
     default))
 '(package-selected-packages '(go-mode magit markdown-mode rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
