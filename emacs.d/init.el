(require 'package)
(push '("melpa" . "http://melpa.milkbox.net/packages/") package-archives )
(push '("marmalade" . "http://marmalade-repo.org/packages/") package-archives )
(package-initialize)

(require 'evil)
(defalias 'inactivate-current-input-method-function 'deactivate-current-input-method-function)
(evil-mode 1)

(require 'cc-mode)

(setq-default c-basic-offset 4 cdefault-style "linux")
(setq-default tab-width 4 indent-tabs-mode nil)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

(require 'auto-complete-clang)
(define-key c++-mode-map (kbd "C-S-<return>") 'ac-complete-clang)
(require 'yasnippet)
(yas-global-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(require 'flymake)

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode)
              (ggtags-mode 1))))

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-enable-caching t)
'(safe-local-variable-values (quote ((projectile-svn-command . "find . -type f -print0"))))

(load "pde-load")
(setq cperl-invalid-face 'default)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default)))
 '(global-whitespace-mode nil)
 '(whitespace-line-column 150))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "Inconsolata")))))

(load-theme 'monokai t)

(require 'whitespace)
(global-relative-line-numbers-mode)
