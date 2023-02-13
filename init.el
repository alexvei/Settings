;; Load the dracula theme
(load-theme 'dracula t)

;; Remove menu bar
(menu-bar-mode -1)

;; Remove tool bar
(tool-bar-mode -1)

;; Show line numbers on the left side
(global-linum-mode t)

;; Disable the startup screen
(setq inhibit-startup-screen t)

;; Proper Wrapping
(global-visual-line-mode 1)

;; Highlight current line
(global-hl-line-mode t)

;; Set the tab width to 4 spaces
(setq-default tab-width 4)

;; Use y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; Disable "custom" message
(setq custom-file (make-temp-file "emacs-custom"))

;; Save backup files in a separate directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Add MELPA repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Add ELPA repository
(add-to-list 'package-archives
             '("ELPA" . "https://tromey.com/elpa/") t)
(package-initialize)


;; Enable neotree
(require  'neotree)
  (global-set-key [f8] 'neotree-toggle)
  (setq neo-show-hidden-files t)
  (setq neo-smart-open t)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))


;; Enable python-mode for .py files
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; Use the standard Python interpreter
(setq python-shell-interpreter "python"
      python-shell-interpreter-args "-i")

;; Enable flymake for python-mode
(add-hook 'python-mode-hook 'flymake-mode)

;; Enable company-mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
