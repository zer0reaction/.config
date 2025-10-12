;; Custom file annoying thing
(setq custom-file "~/.emacs.d/custom.el")

;; Third-party packages
(add-to-list 'load-path "~/.emacs.local")
(require 'simpc-mode)
(require 'azure-theme)
(require 'gruber-darker-theme)

;; Simple C mode
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

;; Behaviour in files
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(setq-default require-final-newline t)

;; Emacs behaviour and appearance
(setq-default make-backup-files nil)
(setq-default inhibit-startup-screen t)
(setq-default mouse-wheel-progressive-speed nil)
(setq-default whitespace-style '(face trailing empty tab-mark))
(global-unset-key (kbd "C-z"))
(add-to-list 'default-frame-alist '(font . "Iosevka-17"))

;; Dvorak specific remap
(define-key key-translation-map "\C-t" "\C-x")

;; Modes
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-auto-revert-mode)
(global-whitespace-mode)

;; Go mode hook to remove tab highlighting
(add-hook 'go-mode-hook
          (lambda ()
            (setq-local whitespace-style
                        '(face trailing empty))
            ))

;; Remove trailing whitespace on save
(add-hook 'before-save-hook
          (lambda () (delete-trailing-whitespace)))

(load-file custom-file)
