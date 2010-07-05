

 (unless (fboundp 'auto-detect-longlines) (defun auto-detect-longlines () t))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(compilation-error-regexp-alist (quote (bash gcov-file gcov-header gcov-nomark gcov-called-line gcov-never-called)))
 '(org-agenda-files (quote ("~/my.org")))
 '(rdebug-window-layout-function (quote rdebug-window-layout-conservative))
 '(show-paren-mode t)
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#ffff00")
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-directories-general-face ((((class color) (background dark)) (:inherit ecb-default-general-face :background "#040301" :foreground "grey" :height 1.0))))
 '(ecb-history-general-face ((((class color) (background dark)) (:inherit ecb-default-general-face :background "#040301" :foreground "grey" :height 1.0))))
 '(ecb-methods-general-face ((((class color) (background dark)) (:inherit ecb-default-general-face :background "#040301" :foreground "grey" :height 1.0))))
 '(ecb-sources-general-face ((((class color) (background dark)) (:inherit ecb-default-general-face :background "#040301" :foreground "grey" :height 1.0)))))
