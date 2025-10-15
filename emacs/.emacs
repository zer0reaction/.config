(setq custom-file "~/.emacs.d/custom.el")

;; Third-party packages
(add-to-list 'load-path "~/.emacs.local")
(require 'simpc-mode)
(require 'azure-theme)
(require 'gruber-darker-theme)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

;; Default settings
(setq-default indent-tabs-mode nil
              tab-width 8
              require-final-newline t
              make-backup-files nil
              inhibit-startup-screen t
              mouse-wheel-progressive-speed nil
              whitespace-style '(face trailing empty tab-mark))

;; Fonts
(add-to-list 'default-frame-alist '(font . "Iosevka-17"))
(set-face-attribute 'fixed-pitch t :family "Iosevka Light")

;; Keyboard
(define-key key-translation-map "\C-t" "\C-x")
(global-set-key (kbd "C-z") 'undo)

;; Modes
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-auto-revert-mode)
(global-whitespace-mode)

;; Disable tab highlighting in Go mode
(add-hook 'go-mode-hook
          (lambda ()
            (setq-local whitespace-style
                        '(face trailing empty))
            ))

(load-file custom-file)
