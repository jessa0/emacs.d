;;; geogriffin-init.el --- geogriffin's emacs init file.
;; -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(setq custom-file (expand-file-name "lisp/geogriffin-custom.el" user-emacs-directory))
(load custom-file)
(prefer-coding-system 'utf-8)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(unless (require 'use-package nil t)
  (unless (boundp 'package-archive-contents)
    (package-initialize))
  (unless (assoc 'use-package package-archive-contents)
    (package-refresh-contents)
    (package-install 'use-package)))

(load (expand-file-name "lisp/geogriffin.el" user-emacs-directory))

;;; geogriffin-init.el ends here
