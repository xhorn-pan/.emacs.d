(provide 'orgmode-config)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; org export latex settings
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
	       '("xp-homework" "\\documentclass[a4paper, 12pt]{article}
		   	\\usepackage{fontspec}
		    \\setromanfont{Times New Roman}
  			\\setsansfont{Arial}
  			\\setmonofont[Color={0019D4}]{Courier New}
		    \\usepackage[margin=1in]{geometry} 
 			\\usepackage{amsmath,amsthm,amssymb}
 			\\usepackage{hyperref}
 			\\hypersetup{colorlinks=true,urlcolor=blue,linkcolor=black}
 			\\usepackage{multicol}
 			\\newcommand{\\R}{\\mathbb{R}}
 			\\newcommand{\\Q}{\\mathbb{Q}}
		   "
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		 ("\\paragraph{%s}" . "\\paragraph*{%s}")
		 ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

(setq org-log-done t)
(setq org-fast-tag-selection-single-key t)
(setq org-use-fast-todo-selection t)
(setq org-startup-truncated nil)

(setq org-directory (expand-file-name "~/OneDrive/org"))
(setq org-default-notes-file (concat org-directory "/mygtd.org"))

;; capture
(setq org-reverse-note-order t)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/OneDrive/org/mygtd.org" "Tasks")
	 "* TODO %?\nAdded: %u\n" :prepend t :kill-buffer t)
	("h" "Home" entry (file+headline "~/OneDrive/org/mygtd.org" "Home")
	 "* TODO %?\nAdded: %u\n" :prepend t :kill-buffer t)
	("p" "Prog" entry (file+headline "~/OneDrive/org/mygtd.org" "Prog")
	 "* TODO %?\nAdded: %u\n" :prepend t :kill-buffer t)
	)
      )
