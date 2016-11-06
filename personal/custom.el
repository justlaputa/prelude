(scroll-bar-mode -1)

(global-set-key (kbd "C-x k") 'kill-this-buffer)

(setq whitespace-style (quote (face trailing tabs empty indentation::space)))

(speedbar 1)

(setq speedbar-show-unknown-files t)

(setq org-agenda-files (list "~/.org/work.org"
                             "~/.org/hack.org"
                             "~/.org/life.org"))

(setq projectile-completion-system 'grizzl)
(setq projectile-enable-caching t)

(set-face-attribute hl-line-face nil :underline nil)
(set-face-background hl-line-face "gray13")

(setq js-indent-level 2)

(setenv "GOPATH" "/home/laputa/workspace/go")

(defun xah-open-in-external-app ()
  "Open the current file or dired marked files in external app.
The app is chosen from your OS's preference.

URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2015-01-26"
  (interactive)
  (let* (
         (ξfile-list
          (if (string-equal major-mode "dired-mode")
              (dired-get-marked-files)
            (list (buffer-file-name))))
         (ξdo-it-p (if (<= (length ξfile-list) 5)
                       t
                     (y-or-n-p "Open more than 5 files? "))))

    (when ξdo-it-p
      (cond
       ((string-equal system-type "windows-nt")
        (mapc
         (lambda (fPath)
           (w32-shell-execute "open" (replace-regexp-in-string "/" "\\" fPath t t))) ξfile-list))
       ((string-equal system-type "darwin")
        (mapc
         (lambda (fPath) (shell-command (format "open \"%s\"" fPath)))  ξfile-list))
       ((string-equal system-type "gnu/linux")
        (mapc
         (lambda (fPath) (let ((process-connection-type nil)) (start-process "" nil "xdg-open" fPath))) ξfile-list))))))

;; from http://emacswiki.org/emacs/InsertingTodaysDate
(defun insert-todays-date (arg)
  (interactive "P")
  (insert (if arg
              (format-time-string "%d-%m-%Y")
            (format-time-string "%Y-%m-%d"))))

;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-height 10)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-display-style 'fancy)

(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-load-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)

(global-set-key (kbd "C-c C-r") 'ivy-resume)

(setq view-read-only t)

(provide 'custom)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spolsky)))
 '(custom-safe-themes
   (quote
    ("0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" default)))
 '(linum-format " %7i ")
 '(package-selected-packages
   (quote
    (counsel ivy swiper dockerfile-mode go-mode yaml-mode zop-to-char zenburn-theme which-key volatile-highlights undo-tree sublime-themes smex smartrep smartparens smart-mode-line rainbow-mode rainbow-delimiters ov operate-on-number move-text markdown-mode magit lua-mode json-mode js2-mode imenu-anywhere ido-ubiquitous guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck flx-ido expand-region elisp-slime-nav easy-kill discover-my-major diminish diff-hl crux company browse-kill-ring beacon anzu ace-window)))
)

;;; custom.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
