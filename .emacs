(add-to-list 'load-path 
    (concat user-emacs-directory 
        (convert-standard-filename "packages/")))
(require 'package)
(require 'vimpulse)
(add-to-list 'package-archives
	                  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'flx-ido)
    (package-refresh-contents) (package-install 'flx-ido))
(unless (package-installed-p 'projectile)
    (package-refresh-contents) (package-install 'projectile))
(unless (package-installed-p 'scala-mode2)
    (package-refresh-contents) (package-install 'scala-mode2))
(add-to-list 'load-path "~/ensime_2.10.0-0.9.8.9/elisp/")
(require 'ensime)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)
(require 'projectile)
(projectile-global-mode)
(global-set-key "\C-p" 'projectile-find-file)
;; load the ensime lisp code...
;(add-to-list 'load-path "ENSIME_ROOT/src/main/elisp/")
;(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;(viper-mode)
