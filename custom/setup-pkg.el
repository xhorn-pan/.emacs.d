(defconst required-pkgs
  '(dracula-theme
    yasnippet
    company
    rtags
    company-rtags))

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package required-pkgs)
  (unless (package-installed-p package)
    (package-install package)))


(provide 'setup-pkg)
