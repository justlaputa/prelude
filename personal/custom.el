(scroll-bar-mode -1)

(global-set-key (kbd "C-x k") 'kill-this-buffer)

(setq whitespace-style (quote (face trailing tabs empty indentation::space)))

(speedbar 1)

(setq speedbar-show-unknown-files t)

(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)

(setq js2-basic-offset 2)
(setq js2-bounce-indent-p t)
(setq js2-highlight-level 3)

(setq org-agenda-files (list "~/.org/work.org"
                             "~/.org/hack.org"
                             "~/.org/life.org"))

(setq projectile-completion-system 'grizzl)
(setq projectile-enable-caching t)

(load-theme 'spolsky t)

(set-face-attribute hl-line-face nil :underline nil)
(set-face-background hl-line-face "gray13")

(provide 'custom)
