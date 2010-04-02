;; emacs-w3m is in ~/elisp
(setq load-path (append (list "/home/knight/.emacs.d/emacs-w3m")
                        load-path))

;;(setq w3m-icon-directory "~/elisp/emacs-w3m/icons")
(require 'w3m-load)


;;(require 'mime-w3m)
(setq w3m-use-cookies t)

(setq browse-url-browser-function 'w3m)
(setq browse-url-firefox-new-window-is-tab t)


(defun search-site-url (keyword &optional site inurl lucky)
  "Do a Google search for KEYWORD. Restrict to SITE and INURL, if specified.
Jump to best match (I Feel Lucky) if LUCKY set.
"
  (concat "http://www.google.com/"
          (format "search?q=%s" (url-hexify-string keyword))
          (if site (format "+site:%s" (url-hexify-string site)))
          (if inurl (format "+inurl:%s" (url-hexify-string inurl)))
          (if lucky "&btnI")))


(defun context-help ()
  "Open a browser window showing documentation for the word under the point.
Uses `major-mode' to optionally refine the search to a specific web site,
or a specific pattern in the URL. Defaults to a simple keyword search.
Uses `search-site-url' to do the actual search.
"
  (interactive)
  (browse-url
   (apply 'search-site-url
          (concat (thing-at-point 'symbol)
                  (cond
                   (
                    (equal major-mode 'ruby-mode)
                    " ruby ")
                   (nil)
                   ))
          (cond
            ((equal major-mode 'css-mode)
             '("www.w3schools.com" "/css/" t))
            ((equal major-mode 'ruby-mode)
             '(nil nil  t))
            ((equal major-mode 'rhtml-mode)
             '(nil nil  t))
            ((equal major-mode 'emacs-lisp-mode)
             '("www.gnu.org" "/emacs/"))
            ((or (equal major-mode 'html-mode)
                 (equal major-mode 'html-helper-mode))
             '("www.htmlquick.com" "/reference/" t))
            ((equal major-mode 'javascript-mode)
             '("www.w3schools.com" nil t))
            ((equal major-mode 'python-mode) 
             '("docs.python.org" "/ref/" t))
            (nil nil 123)))))


