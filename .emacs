(add-to-list 'load-path 
    (concat user-emacs-directory 
        (convert-standard-filename "packages/")))
(require 'package)
;(require 'vimpulse)
(add-to-list 'package-archives
	                  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-referesh-contents))

(unless (package-installed-p 'flx-ido)
    (package-refresh-contents) (package-install 'flx-ido))
(unless (package-installed-p 'projectile)
    (package-refresh-contents) (package-install 'projectile))
(unless (package-installed-p 'scala-mode2)
    (package-refresh-contents) (package-install 'scala-mode2))
;(add-to-list 'load-path "~/ensime_2.10.0-0.9.8.9/elisp/")
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
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;(viper-mode)
;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(viper-ESC-moves-cursor-back t)
 ;'(viper-electric-mode t)
 ;'(viper-ex-style-editing nil)
 ;'(viper-insert-state-cursor-color nil)
 ;'(viper-no-multiple-ESC nil)
 ;'(viper-want-ctl-h-help t))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;)
