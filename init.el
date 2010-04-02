;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;
;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"

;; Load path etc:


(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name)
 load-file-name)))
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit"))
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/jabber"))
(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq custom-file (concat dotfiles-dir "custom.el"))


(setq load-path (append (list "~/.emacs.d/elib")
                        load-path))
(setq load-path (append (list "~/.emacs.d/org-mode/lisp")
                        load-path))


;; These should be loaded on startup rather than autoloaded on demand
;; since they are likely to be used in every session:
(require 'org-install)
(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

;; this must be loaded before ELPA since it bundles its own
;; out-of-date js stuff. TODO: fix it to use ELPA dependencies
;;(load "elpa-to-submit/nxhtml/autostart")

;; Load up ELPA, the package manager:

(require 'package)
(package-initialize)
(require 'starter-kit-elpa)

;; Load up starter kit customizations:

(require 'starter-kit-defuns)
(require 'starter-kit-bindings)
(require 'starter-kit-misc)
(require 'starter-kit-registers)
(require 'starter-kit-eshell)
(require 'starter-kit-js)

(regen-autoloads)
(load custom-file 'noerror)

;; More complicated packages that haven't made it into ELPA yet:

(autoload 'jabber-connect "jabber" "" t)
;; TODO: rinari, slime

;; You can keep system- or user-specific customizations here:

(setq system-specific-config (concat dotfiles-dir system-name ".el")
      user-specific-config (concat dotfiles-dir user-login-name ".el"))

(if (file-exists-p system-specific-config) (load system-specific-config))
(if (file-exists-p user-specific-config) (load user-specific-config))

;;; init.el ends here

;;; starter-kit-ruby.el --- Some helpful Ruby code
;;
;; Part of the Emacs Starter Kit

 (add-to-list 'load-path
                     "~/.emacs.d/ecb-2.40")
 (require 'ecb-autoloads)


(global-set-key (kbd "C-h r") 'ri)

;; Rake files are ruby, too, as are gemspecs.
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

;; We never want to edit Rubinius bytecode
(add-to-list 'completion-ignored-extensions ".rbc")

;;; Rake

(defun pcomplete/rake ()
  "Completion rules for the `ssh' command."
  (pcomplete-here (pcmpl-rake-tasks)))

(defun pcmpl-rake-tasks ()
  "Return a list of all the rake tasks defined in the current
projects.  I know this is a hack to put all the logic in the
exec-to-string command, but it works and seems fast"
  (delq nil (mapcar '(lambda(line)
                       (if (string-match "rake \\([^ ]+\\)" line) (match-string 1 line)))
                    (split-string (shell-command-to-string "rake -T") "[\n]"))))

(defun rake (task)
  (interactive (list (completing-read "Rake (default: default): "
                                      (pcmpl-rake-tasks))))
  (shell-command-to-string (concat "rake " (if (= 0 (length task)) "default" task))))


;; ;; Clear the compilation buffer between test runs.
;; (eval-after-load 'ruby-compilation
;;   '(progn
;;      (defadvice ruby-do-run-w/compilation (before kill-buffer (name cmdlist))
;;        (let ((comp-buffer-name (format "*%s*" name)))
;;          (when (get-buffer comp-buffer-name)
;;            (with-current-buffer comp-buffer-name
;;              (delete-region (point-min) (point-max))))))
;;      (ad-activate 'ruby-do-run-w/compilation)))

;; (add-hook 'ruby-mode-hook 'coding-hook)
;; (add-hook 'ruby-mode-hook 'idle-highlight)




;; Rinari (Minor Mode for Ruby On Rails)
(setq rinari-major-modes
      (list 'mumamo-after-change-major-mode-hook 'dired-mode-hook 'ruby-mode-hook
            'css-mode-hook 'yaml-mode-hook 'javascript-mode-hook))

;; TODO: set up ri
;; TODO: electric

(provide 'starter-kit-ruby)
;; starter-kit-ruby.el ends here
(setq inhibit-splash-screen t)
;;(setq default-frame-alist
;;      '((background-color . "black")
;;        (foreground-color . "green"))) 


(global-set-key "\M-r" 'replace-string)
(global-set-key "\M-n" 'anything)
(global-set-key "\M-z" 'advertised-undo)

                                        ;get rid of menu
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;;(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))



                                        ; directory to put various el files into
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d")

;; (require 'alt-font-menu)
;; (autoload 'alt-mouse-set-font "alt-font-menu"
;;   "interactively choose font using mouse" t)
;; (global-set-key [(shift down-mouse-1)] 'alt-mouse-set-font)


(setq afm-max-pixels 32)
(setq afm-min-pixels 14)
;;(setq afm-weight "medium")
(setq afm-slant "r")
;;(setq afm-width "normal")
;;(setq afm-charset "iso8859-1")


(require 'color-theme)
(setq color-theme-is-global t)



(global-font-lock-mode t)

                                        ;make backup files in ~/.emacs-backups
(setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs-backups"))))

;;(set-default-font "-*-terminal-medium-r-*-*-24-*-*-*-*-*-*-*")
(setq search-highlight t)    

;;  Highlight selection
(setq transient-mark-mode t)


;; Highlight matching parentheses
(setq show-paren-mode t)

;;use c-x c-m or c-x c-m instead of esc
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)





                                        ;Allows syntax highlighting to work, among other things
(global-font-lock-mode 1)


;; Load CEDET
(load-file "~/.emacs.d/cedet-1.0pre7/common/cedet.el")
;;(global-ede-mode t)             ; Enable the Project management system
;;(require 'semantic-ia)



(add-to-list 'load-path "~/.emacs.d/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet-0.6.1c/snippets")


;; (defun my-font ()
;;   (set-default-font "-*-lucidatypewriter-Bold-r-normal-*-24-*-*-*-*-*-*-*")

;;   )
;;  (set-default-font "-*-lucidatypewriter-Bold-r-normal-*-24-*-*-*-*-*-*-*")



;; Enabling various SEMANTIC minor modes.  See semantic/INSTALL for more ideas.
;; Select one of the following:

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
;;(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as the nascent intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-guady-code-helpers)

;; * This turns on which-func support (Plus all other code helpers)
(semantic-load-enable-excessive-code-helpers)

;; This turns on modes that aid in grammar writing and semantic tool
;; development.  It does not enable any other features such as code
;; helpers above.
;; (semantic-load-enable-semantic-debugging-helpers)








;;anything
(load-file "~/.emacs.d/anything.el")
(load-file "~/.emacs.d/anything-config.el")



(setq jabber-nickname "knight")
(setq jabber-username "knight")

(eval-after-load "dabbrev" '(defalias 'dabbrev-expand 'hippie-expand))




;;setopt noflowcontrol


;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cp" 'org-do-promote)
(global-set-key "\C-cd" 'org-do-demote)
(add-hook 'org-mode-hook 'turn-on-font-lock) ; Org buffers only
;; (add-hook 'org-mode-hook 'longlines-mode)
(setq org-hide-leading-stars t)
(setq org-odd-levels-only t)
(setq org-cycle-include-plain-lists  t)
(setq org-empty-line-terminates-plain-lists  t)








;; Make shifted direction keys work on the Linux console or in an xterm
(when (member (getenv "TERM") '("linux" "xterm"))
  (dolist (prefix '("\eO" "\eO1;" "\e[1;"))
    (dolist (m '(("2" . "S-") ("3" . "M-") ("4" . "S-M-") ("5" . "C-")
                 ("6" . "S-C-") ("7" . "C-M-") ("8" . "S-C-M-")))
      (dolist (k '(("A" . "<up>") ("B" . "<down>") ("C" . "<right>")
                   ("D" . "<left>") ("H" . "<home>") ("F" . "<end>")))
        (define-key function-key-map
          (concat prefix (car m) (car k))
          (read-kbd-macro (concat (cdr m) (cdr k))))))))


;;; Color theme based on Tango Palette. Created by danranx@gmail.com
(defun color-theme-tango ()
  "A color theme based on Tango Palette."
  (interactive)
  (color-theme-install
   '(color-theme-tango
     (
      (background-mode . dark)
      (border-color . "#888a85")
      (cursor-color . "#fce94f")
      (foreground-color . "#88FF88")
      (mouse-color . "#8ae234"))
     ((help-highlight-face . underline)
      (ibuffer-dired-buffer-face . font-lock-function-name-face)
      (ibuffer-help-buffer-face . font-lock-comment-face)
      (ibuffer-hidden-buffer-face . font-lock-warning-face)
      (ibuffer-occur-match-face . font-lock-warning-face)
      (ibuffer-read-only-buffer-face . font-lock-type-face)
      (ibuffer-special-buffer-face . font-lock-keyword-face)
      (ibuffer-title-face . font-lock-type-face))
     (border ((t (:background "#888a85"))))
     (fringe ((t (:background "grey10"))))
     (mode-line ((t (:foreground "#eeeeec" :background "grey10"))))
     (region ((t (:background "#555753"))))
     (font-lock-builtin-face ((t (:foreground "#729fcf"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-constant-face ((t (:foreground "#8aff66"))))
     (font-lock-doc-face ((t (:foreground "#888a85"))))
     (font-lock-keyword-face ((t (:foreground "#729fcf" :bold t))))
     (font-lock-string-face ((t (:foreground "#ad7fa8" :italic t))))
     (font-lock-type-face ((t (:foreground "#5ae234" :bold t))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (font-lock-warning-face ((t (:bold t :foreground "#f50000"))))
     (font-lock-function-name-face ((t (:foreground "#00FF00" :bold t :italic t))))
     (comint-highlight-input ((t (:italic t :bold t))))
     (comint-highlight-prompt ((t (:foreground "#8ae234"))))
     (isearch ((t (:background "#f57900" :foreground "#2e3436"))))
     (isearch-lazy-highlight-face ((t (:foreground "#2e3436" :background "#e9b96e"))))
     (show-paren-match-face ((t (:foreground "#2e3436" :background "#73d216"))))
     (show-paren-mismatch-face ((t (:background "#ad7fa8" :foreground "#2e3436"))))
     (minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
     (info-xref ((t (:foreground "#729fcf"))))
     (info-xref-visited ((t (:foreground "#ad7fa8"))))
     )))

(provide 'color-theme-tango)


(require 'idle-highlight)
;;(load-file "~/.emacs.d/ruby-mode.el")
(require 'multi-term)
;;(setq amzcpp-use-my-colors t)


;; (add-to-list 'load-path "~/.emacs.d/rdebug")
;; (require 'rdebug)

(setq compilation-scroll-output t)


(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c M-x") 'smex-update-and-run)

;;go back to same line when you reopen file
(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean
(setq-default save-place t) ;; activate it for all buffers
(require 'saveplace)        ;; get the package

(defun my-save-and-recompile ()
  (interactive "")
  (save-buffer 0)
  (recompile))

 
(defun my-save-and-compile ()
  (my-setup-build-context)
  (interactive "")
  (save-buffer 0)
  (compile my-compile-command))

(defun my-save-and-compile-apollo ()
  (my-setup-build-context)
  (interactive "")
  (save-buffer 0)
  (compile (concat my-compile-command " apollo-pkg")))

(defun my-save-and-test ()
  (my-setup-build-context)
  (interactive "")
  (save-buffer 0)
  (compile (concat my-test-command)))

(fset 'my-save-and-kill
      [?\C-x ?\C-s ?\C-x ?k return])

(fset 'my-kill
      [?\C-x ?k return])


;; (defun my-save-and-kill()
;;      (interactive"")
;;      (save-some-buffers 1)
;;      (kill-buffer ))

;;(load "context_help.el")


;;(require 'context_help.el)
;; ;; -- INTEGRATED HELP

;; (defun search-site-url (keyword &optional site inurl lucky)
;;   "Do a Google search for KEYWORD. Restrict to SITE and INURL, if specified.
;; Jump to best match (I Feel Lucky) if LUCKY set.
;; "
;;   (concat "http://www.google.com/"
;;           (format "search?q=%s" (url-hexify-string keyword))
;;           (if site (format "+site:%s" (url-hexify-string site)))
;;           (if inurl (format "+inurl:%s" (url-hexify-string inurl)))
;;           (if lucky "&btnI")))



;; (defun context-help ()
;;   "Open a browser window showing documentation for the word under the point.
;; Uses `major-mode' to optionally refine the search to a specific web site,
;; or a specific pattern in the URL. Defaults to a simple keyword search.
;; Uses `search-site-url' to do the actual search.
;; "
;;   (interactive)
;;   (browse-url
;;    (apply 'search-site-url
;;       (concat    (thing-at-point 'symbol)
;;           (cond 
;;            (
;;             (equal major-mode 'ruby-mode)
;;             " ruby " )
;;            ""
;;            ))
           
                 
;;    (cond
;;     ((equal major-mode 'ruby-mode)
;;      '(nil nil  t))
;;     ((equal major-mode 'css-mode)
;;      '("www.w3schools.com" "/css/" t))
;;     ((equal major-mode 'emacs-lisp-mode)
;;      '("www.gnu.org" "/emacs/"))
;;     ((or (equal major-mode 'html-mode)
;;          (equal major-mode 'html-helper-mode))
;;      '("www.htmlquick.com" "/reference/" t))
;;     ((equal major-mode 'javascript-mode)
;;      '("www.w3schools.com" nil t))
;;     ((equal major-mode 'python-mode) 
;;      '("docs.python.org" "/ref/" t))
;;     (t nil)))))








(setq-default c-basic-offset 4)
;;Here is what my emacs contains to switch to zsh...
(setq explicit-shell-file-name "/bin/zsh")
;; Don't set TERM=dumb, it bugs zsh.
(require 'comint)
(defun comint-exec-1 (name buffer command switches)
(let ((process-environment
       (nconc
        (if (and (boundp 'system-uses-terminfo) system-uses-terminfo)
            (list "EMACS=t" "TERM=emacs"
                  (format "COLUMNS=%d
" (frame-width)))
          (list "EMACS=t" "TERM=emacs"
                (format "TERMCAP=emacs:co#%d:tc=unknown" (frame-width))))
        process-environment)))
  (apply 'start-process name buffer command switches)))


;;(setq compile-command "brazil-build -emacs build")    
;;(setq amz-bmds-brazil-build-command "brazil-build")
;;(push '("\\(.*?\\):\\([0-9]+\\): error: \\(.*?\\)\n" 1 2 nil 2 3 (6 compilation-error-face)) compilation-error-regexp-alist)
;;(push '("\\(.*?\\):\\([0-9]+\\): warning: \\(.*?\\)\n" 1 2 nil 1 3 (6 compilation-warning-face)) compilation-error-regexp-alist)

;;cua mode to select rectangles with ctrl-ret
(cua-mode t)
(setq cua-enable-cua-keys nil) ;;but dont' want to remap other keys


     
(defun switch-to-previous-buffer ()
(interactive)
(switch-to-buffer (other-buffer)))

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key "\C-c\C-d" 'rdebug)
(global-set-key [f1] 'switch-to-previous-buffer)
;;(global-set-key [f2] 'context-help)


(global-set-key [f3] 'tags-loop-continue)
(global-set-key [f4] 'next-error)
(global-set-key [f5] 'my-save-and-test)
(global-set-key [f6] 'my-save-and-compile-apollo)

(global-set-key [C-f7] 'my-save-and-recompile)
(global-set-key [f7] 'my-save-and-compile)
(global-set-key [S-f7] 'compile)
(global-set-key [f8] 'my-save-and-recompile)
(global-set-key [f9] 'rdebug-toggle-breakpoint)
(global-set-key [f10] 'my-save-and-kill)
(global-set-key [S-f10] 'my-kill)
(global-set-key [f11] 'find-file)
(global-set-key [f12] 'find-tag)
(global-set-key [S-f12] 'tags-search)
(global-set-key [C-tab] 'switch-to-buffer)

(global-set-key "\M-i" 'indent-buffer)


;; (global-set-key [f5] 'rdebug-cont)
;; (global-set-key [f6] 'rdebug)
;; (global-set-key [f7] 'rdebug-step)
;; (global-set-key [f8] 'rdebug-next)
;; (global-set-key [f9] 'rdebug-toggle-breakpoint)
;; (global-set-key [f10] 'rdebug-display-cmd-buffer)
;; (global-set-key [f11] 'rdebug-display-src-buffer)
;; ;;(global-set-key [f12] 'rdebug-display-variables-buffer)

;; (global-set-key [S-f10] 'rdebug-display-frame-buffer)
;; (global-set-key [S-f11] 'rdebug-display-output-buffer)
;; (global-set-key [S-f12] 'rdebug-display-watch-buffer)


;; (global-set-key [S-f5] 'rdebug-restart)
;; (global-set-key [S-f6] 'rdebug-quit)


(global-set-key "\C-x 0" 'rdebug-display-src-buffer)
(global-set-key "\C-x 1" 'rdebug-display-watch-buffer)
(global-set-key "\C-x 2" 'rdebug-display-variables-buffer)
(global-set-key "\C-x 3" 'rdebug-display-frame-buffer)
(global-set-key "\C-x 4" 'rdebug-display-cmd-buffer)

(global-set-key "\M-t" 'multi-term)
(global-set-key "\M-f" 'indent-buffer)


;; ; Install mode-compile to give friendlier compiling support!
;; (autoload 'mode-compile "mode-compile"
;;    "Command to compile current buffer file based on the major mode" t)
;; (global-set-key "\C-cc" 'mode-compile)
;; (autoload 'mode-compile-kill "mode-compile"
;;  "Command to kill a compilation launched by 'mode-compile'" t)
;; (global-set-key "\C-ck" 'mode-compile-kill)


(defun compilation-buffer-resize (buffer string)
  (cond ((string-match "finished" string)
        ("t"
         (fit-window-to-buffer (get-buffer-window buffer) (/ (- (frame-height) 2) 2))))))

(add-hook 'compilation-finish-functions 'compilation-buffer-resize)

 (setq compilation-finish-functions 'compile-autoclose)
 (defun compile-autoclose (buffer string)
   (cond ((string-match "finished" string)
          (message "Build maybe successful: closing window.")
          (run-with-timer 1 nil                      
                          'delete-window              
                          (get-buffer-window buffer t)))
         (t                                                                    
          (message "Compilation exited abnormal: %s" string))))

;; ;; higlight changes in documents
;; (global-highlight-changes-mode t)
;; (setq highlight-changes-visibility-initial-state nil); initially, hide#

;; ;; toggle changes visibility
;; (global-set-key (kbd "<f6>")      'highlight-changes-visible-mode) ;; changes

;; ;; remove the change-highlight in region
;; (global-set-key (kbd "S-<f6>")    'highlight-changes-remove-highlight)

;; ;; alt-pgup/pgdown jump to the previous/next change
;; (global-set-key (kbd "<M-prior>") 'highlight-changes-next-change)
;; (global-set-key (kbd "<M-next>")  'highlight-changes-previous-change)

;;(setq-default debug-on-error t)
;;(add-to-list 'load-path "~/.emacs.d/ess-5.3.11/lisp")
;;(require 'ess-site)


;; ;;--------------------------------------------------------------------
;; ;; Lines enabling gnuplot-mode

;; ;; move the files gnuplot.el to someplace in your lisp load-path or
;; ;; use a line like
;; (setq load-path (append (list "~/.emacs.d/gnuplot-mode.0.6.0") load-path))

;; ;; these lines enable the use of gnuplot mode
;; (autoload 'gnuplot-mode "gnuplot" "gnuplot major mode" t)
;; (autoload 'gnuplot-make-buffer "gnuplot" "open a buffer in gnuplot mode" t)

;; ;; this line automatically causes all files with the .gp extension to
;; ;; be loaded into gnuplot mode
;; (setq auto-mode-alist (append '(("\\.gp$" . gnuplot-mode)) auto-mode-alist))

;; This line binds the function-9 key so that it opens a buffer into
;; gnuplot mode 
;;  (global-set-key [(f9)] 'gnuplot-make-buffer)

;; end of line for gnuplot-mode
;;-------------------------------------------------------------------


(server-start)
