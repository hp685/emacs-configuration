;; Set default directory of the project

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq default-directory "~/Programming/socket-programming/")
(desktop-save-mode 1)
(setq debug-on-error t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet-snippets yasnippet-classic-snippets py-autopep8 js3-mode indium pylint py-yapf jedi importmagic flycheck-pyflakes flycheck-pycheckers flycheck company-jedi ac-c-headers ac-clang abl-mode anaconda-mode yapfify react-snippets))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'yasnippet)
(yas-global-mode 1)

;; enable ido mode to switch between buffers quicker
;; C-x b shows list of buffer candidates
(ido-mode 1)
(setq ido-separator "\n")
  
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; enable line numbers for all buffers
(global-linum-mode t)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on_dot t)
;; load js3-mode for javascript 
(autoload 'js3-mode "js3" nil t)
   (add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

;; run pep8 on save
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; python max line length for autopep8
(setq py-autopep8-options '("--max-line-length=80"))
