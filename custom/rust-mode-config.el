(provide 'rust-mode-config)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
(add-hook 'racer-mode-hook
	  (lambda()
	    (set (make-local-variable 'company-backends)
		  '((company-capf company-dabbrev-code company-yasnippet company-files)))))
