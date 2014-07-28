(scroll-bar-mode -1)

(global-set-key (kbd "C-x k") 'kill-this-buffer)

(setq whitespace-style (quote (face trailing tabs empty indentation::space)))

(speedbar 1)

(setq speedbar-show-unknown-files t)

(provide 'custom)
