(deftheme azure
  "azure theme")

;;(custom-set-faces
;; ;; custom-set-faces was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; '(default ((t (:foreground "#d3b58d" :background "#041818"))))
;; '(custom-group-tag-face ((t (:underline t :foreground "lightblue"))) t)
;; '(custom-variable-tag-face ((t (:underline t :foreground "lightblue"))) t)
;; '(font-lock-builtin-face ((t nil)))
;; '(font-lock-comment-face ((t (:foreground "#3fdflf"))))
;; '(font-lock-function-name-face ((((class color) (background dark)) (:foreground "white"))))
;; '(font-lock-keyword-face ((t (:foreground "white"))))
;; '(font-lock-string-face ((t (:foreground "#0fdfaf"))))
;; '(font-lock-variable-name-face ((((class color) (background dark)) (:foreground "#c8d4ec"))))
;; '(font-lock-warning-face ((t (:foreground "#504038"))))
;; '(highlight ((t (:foreground "navyblue" :background "darkseagreen2"))))
;; '(mode-line ((t (:inverse-video t))))
;; '(region ((t (:background "blue"))))
;; '(widget-field-face ((t (:foreground "white"))) t)
;; '(widget-single-line-field-face ((t (:background "darkgray"))) t))
;;(set-cursor-color "lightgreen")

(custom-theme-set-faces
 'azure
 
 '(default ((t (:foreground "#d3b58d" :background "#041818"))))
 '(custom-group-tag-face ((t (:underline t :foreground "lightblue"))) t)
 '(custom-variable-tag-face ((t (:underline t :foreground "lightblue"))) t)
 '(font-lock-builtin-face ((t nil)))
 '(font-lock-comment-face ((t (:foreground "#3fdflf"))))
 '(font-lock-function-name-face ((((class color) (background dark)) (:foreground "white"))))
 '(font-lock-keyword-face ((t (:foreground "white"))))
 '(font-lock-string-face ((t (:foreground "#0fdfaf"))))
 '(font-lock-variable-name-face ((((class color) (background dark)) (:foreground "#c8d4ec"))))
 '(font-lock-warning-face ((t (:foreground "#504038"))))
 '(highlight ((t (:foreground "navyblue" :background "darkseagreen2"))))
 '(mode-line ((t (:inverse-video t))))
 '(region ((t (:background "blue"))))
 '(widget-field-face ((t (:foreground "white"))) t)
 '(widget-single-line-field-face ((t (:background "darkgray"))) t)
 '(cursor ((t (:background "lightgreen")))))

;;(set-cursor-color "lightgreen")

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'azure)

;;; azure-theme.el ends here.
