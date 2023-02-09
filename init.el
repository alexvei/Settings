;; ===================================
;; MELPA Package Support
;; ===================================

;; Enables basic packaging support
(require 'package)
(require 'json)

;; Set the Python interpreter
(setq python-shell-interpreter "C:\\Users\\Work\\AppData\\Local\\Programs\\Python\\Python39\\python.exe")

;; Add package archives
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Initialize the package system
(package-initialize)

;; Enable Elpy
(elpy-enable)

(setq elpy-shell-echo-input nil
      elpy-shell-echo-output nil
      elpy-shell-use-project-root nil
      python-shell-interactive-shell-args "--simple-prompt -i")

;; Enable line numbers globally
(global-linum-mode t)

;; Save the desktop state
(desktop-save-mode 1)

;; ===================================
;; Doom Theme
;; ===================================

;; Load the doom-themes package
(require 'doom-themes)

;; Doom Theme configuration
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled

  ;; Load the doom-one theme
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)

  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)

  ;; For treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)

  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config)

;; Custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(ein pdfgrep py-autopep8 pdf-tools org-modern material-theme elpy doom-themes better-defaults)))

;; Custom faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

