;; Behaviour in files
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default require-final-newline t)

;; C mode
(setq-default c-basic-offset 4)

(defun my-c-mode-hook ()
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'brace-list-open 0))

(add-hook 'c-mode-hook 'my-c-mode-hook)

;; Emacs behaviour and appearance
(setq-default make-backup-files nil)
(setq-default inhibit-startup-screen t)
(setq-default whitespace-style '(face trailing empty tabs))
(setq-default mouse-wheel-progressive-speed nil)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-;") 'save-buffer)
(add-to-list 'default-frame-alist '(font . "Hack-15"))

;; Modes
(tool-bar-mode 0)
(menu-bar-mode 0)
(global-whitespace-mode)
(global-auto-revert-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wheatgrass))
 '(package-selected-packages '(go-mode magit markdown-mode rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
