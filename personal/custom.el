(scroll-bar-mode -1)

(global-set-key (kbd "C-x k") 'kill-this-buffer)

(setq whitespace-style (quote (face trailing tabs empty indentation::space)))

(speedbar 1)

(setq speedbar-show-unknown-files t)

(setq js-indent-level 2)

(setq org-agenda-files (list "~/.org/work.org"
                             "~/.org/hack.org"
                             "~/.org/life.org"))

(setq projectile-completion-system 'grizzl)
(setq projectile-enable-caching t)

(load-theme 'spolsky t)

(provide 'custom)
