;;; package --- Summary

;;; Commentary:
;;; Code:
(require 'org)

(defvar org-agenda-files)

(setq org-agenda-files (list "~/Dropbox/org/work.org"
                             "~/Dropbox/org/hack.org"))

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(provide 'my-org-mode)
;;; my-org-mode ends here
