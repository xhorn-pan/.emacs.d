(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)
(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-pkg)
(require 'setup-theme)
;;(require 'setup-rtags)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(require 'yasnippet)
(yas-global-mode 1)
