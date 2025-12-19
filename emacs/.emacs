(setq custom-file "~/.emacs.d/custom.el")

;; Third-party packages
(add-to-list 'load-path "~/.emacs.local")
(require 'azure-theme)
(require 'gruber-darker-theme)
(require 'naysayer-theme)
(require 'zenburn-theme)

;; Simple C mode
;; (require 'simpc-mode)
;; (add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

;; C mode
(setq-default c-basic-offset 4)
(defun my-c-mode-hook ()
  (c-set-offset 'substatement-open '0)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-close '0)
  (c-set-offset 'brace-list-open '0))
(add-hook 'c-mode-hook 'my-c-mode-hook)

;; Default behaviour in files
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(setq-default require-final-newline t)
(setq-default make-backup-files nil)

;; Remove annoying things
(setq inhibit-startup-screen t)
(setq mouse-wheel-progressive-speed nil)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Scratch buffer
(setq initial-scratch-message "")
(setq initial-major-mode 'fundamental-mode)

;; Global modes
(global-auto-revert-mode)
(global-whitespace-mode)

;; ido mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-auto-merge-work-directories-length -1) ;; Annoying as hell!

;; org mode
(setq org-startup-indented 1)
(setq org-log-repeat nil)
(setq org-log-redeploy-last-repeat nil)
(global-set-key (kbd "C-c a") #'org-agenda)

;; Visual
(setq-default whitespace-style '(face trailing empty tab-mark))
(add-hook 'go-mode-hook
          (lambda ()
            (setq-local whitespace-style '(face trailing empty))
            (setq-local tab-width 4)))

;; Fonts are changed with customize-face (default, fixed-pitch)

;; Keyboard
;; (keymap-set key-translation-map "C-t" "C-x")
(global-unset-key (kbd "C-z"))

;; Black magic to use russian on Dvorak layout
;; (require 'quail)
;; (quail-define-package
;;  "russian-dvorak" "Russian" "RUDV" nil
;;  "Russian input method for Dvorak system-wide layout"
;;  nil t t t t nil nil nil nil nil t)
;; (quail-define-rules
;;  ;; Lowercase
;;  ("`" ?ё) ("1" ?1) ("2" ?2) ("3" ?3) ("4" ?4) ("5" ?5) ("6" ?6) ("7" ?7) ("8" ?8) ("9" ?9) ("0" ?0) ("[" ?-) ("]" ?=)
;;  ("'" ?й) ("," ?ц) ("." ?у) ("p" ?к) ("y" ?е) ("f" ?н) ("g" ?г) ("c" ?ш) ("r" ?щ) ("l" ?з) ("/" ?х) ("=" ?ъ) ("\\" ?\\)
;;  ("a" ?ф) ("o" ?ы) ("e" ?в) ("u" ?а) ("i" ?п) ("d" ?р) ("h" ?о) ("t" ?л) ("n" ?д) ("s" ?ж) ("-" ?э)
;;  (";" ?я) ("q" ?ч) ("j" ?с) ("k" ?м) ("x" ?и) ("b" ?т) ("m" ?ь) ("w" ?б) ("v" ?ю) ("z" ?.)
;;  ;; Uppercase
;;  ("~" ?Ё) ("!" ?!) ("@" ?\") ("#" ?№) ("$" ?\;) ("%" ?%) ("^" ?:) ("&" ??) ("*" ?*) ("(" ?() (")" ?)) ("{" ?_) ("}" ?+)
;;  ("\"" ?Й) ("<" ?Ц) (">" ?У) ("P" ?К) ("Y" ?Е) ("F" ?Н) ("G" ?Г) ("C" ?Ш) ("R" ?Щ) ("L" ?З) ("?" ?Х) ("+" ?Ъ) ("|" ?/)
;;  ("A" ?Ф) ("O" ?Ы) ("E" ?В) ("U" ?А) ("I" ?П) ("D" ?Р) ("H" ?О) ("T" ?Л) ("N" ?Д) ("S" ?Ж) ("_" ?Э)
;;  (":" ?Я) ("Q" ?Ч) ("J" ?С) ("K" ?М) ("X" ?И) ("B" ?Т) ("M" ?Ь) ("W" ?Б) ("V" ?Ю) ("Z" ?,))

(load-file custom-file)
