
;; Set default directory of the project

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq default-directory "~/Programming/socket-programming/")
(desktop-save-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-ycmd company flycheck-ycmd yasnippet-snippets yasnippet-classic-snippets py-autopep8 pylint py-yapf ac-c-headers ac-clang abl-mode anaconda-mode yapfify react-snippets))))
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


;; run pep8 on save
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; python max line length for autopep8
(setq py-autopep8-options '("--max-line-length=80"))
(put 'set-goal-column 'disabled nil)

;;; you complete, flycheck and company
(require 'ycmd)
(add-hook 'after-init-hook #'global-ycmd-mode)
(require 'company-ycmd)
(company-ycmd-setup)

(setq ycmd-server-command
      (list "python" "-u" (file-truename "~/.emacs.d/ycmd/ycmd/")))

(add-hook 'ycmd-mode-hook 'company-ycmd-setup)
(add-hook 'ycmd-mode-hook 'flycheck-ycmd-setup)

(global-company-mode)
(global-ycmd-mode)

;; speed company up
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

