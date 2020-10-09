;;; geogriffin.el --- geogriffin's ad-hoc emacs code.
;; -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(require 'use-package)

(use-package magit
  :bind (("C-x g" . #'magit-status)
         ("C-x G" . #'magit-file-popup)))

(use-package forge
  :after (magit))

(use-package eldoc-mode
  :hook (racer-mode))

(use-package company
  :hook ((lsp-mode racer-mode) . company-mode)
  :init
  (setq company-tooltip-align-annotations t)
  :config
  (when (require 'rust-mode nil t) (bind-key [remap indent-for-tab-command] #'company-indent-or-complete-common rust-mode-map)))

(use-package subword-mode
  :bind ("C-c C-w" . subword-mode)
  :hook (rust-mode protobuf-mode erlang-mode))

(use-package cargo-minor-mode
  :mode "Cargo\\.toml\\'"
  :hook (rust-mode))

(use-package lsp-mode
  :commands lsp-deferred
  :hook ((c-mode rust-mode erlang-mode python-mode) . lsp-deferred)
  :bind (:map lsp-mode-map
              (("M-RET"                       . #'lsp-execute-code-action)
               ("C-c l g u"                   . #'lsp-rust-find-parent-module)
               ("C-c l ^"                     . #'lsp-rust-analyzer-join-lines)
               ([remap xref-find-definitions] . #'lsp-ui-peek-find-definitions)
               ([remap xref-find-references]  . #'lsp-ui-peek-find-references)
               ([remap highlight-symbol-prev] . #'lsp-ui-peek-jump-backward)
               ([remap highlight-symbol-next] . #'lsp-ui-peek-jump-forward))))

(use-package flycheck
  :config
  (flycheck-define-checker erlang-rebar3-dialyzer
    "An Erlang type checker using dialyzer through the rebar3 build tool."
    :command ("rebar3" "dialyzer")
    :error-parser
    (lambda (output checker buffer)
      (let (;;(output (ansi-color-filter-apply output))
            (patterns (flycheck-checker-get checker 'error-patterns)))
        (seq-map (lambda (err)
                   (let (parsed-errors)
                     (while (and patterns
                                 (not (setq parsed-errors
                                            (flycheck-try-parse-error-with-pattern
                                             err (car patterns) checker))))
                       (setq patterns (cdr patterns)))
                     parsed-errors))
                 (flycheck-tokenize-output-with-patterns output patterns))))
    :error-patterns
    ((error
      line-start (file-name)
      (one-or-more "\n" (one-or-more " ") line ":" (message))
      line-end)
     (error line-start (file-name) ":" line ": " (message) line-end))
    :modes erlang-mode
    :enabled (lambda () (flycheck-rebar3-project-root))
    :predicate (lambda () (flycheck-buffer-saved-p))
    :working-directory flycheck-rebar3-project-root)
  (add-to-list 'flycheck-checkers 'erlang-rebar3-dialyzer)
  (defun my-flycheck-compile ()
    (interactive)
    (flycheck-list-errors)
    (flycheck-buffer)))

(use-package edts-mode
  :config
  (defun my-edts-mode-hook ()
    (push 'erlang-rebar3-dialyzer flycheck-disabled-checkers)
    (push 'erlang-rebar3 flycheck-disabled-checkers)
    (push 'erlang flycheck-disabled-checkers))
  (add-hook 'edts-mode-hook 'my-edts-mode-hook))

;(use-package zone :config (zone-when-idle 600))

(defun my-compile (command)
  (interactive (list (compilation-read-command (eval compile-command))))
  (compile command t))

(defun my-recompile ()
  (interactive)
  (my-compile (eval compile-command)))

(use-package fill-column-indicator
  :config
  (define-globalized-minor-mode global-fci-mode fci-mode
    (lambda () (fci-mode 1)))
  (global-fci-mode))

(use-package flycheck-inline
  :config
  (global-flycheck-inline-mode))

(use-package hcl-mode
  :mode "\\.tf\\'")

(use-package conf-unix-mode
  :mode "inventories/.+/hosts\\'")

(put 'narrow-to-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

(global-set-key (kbd "C-z")    #'undo)
(global-set-key (kbd "M-o")    #'other-window)
(global-set-key (kbd "M-0")    #'kill-buffer-and-window)
(global-set-key (kbd "M-1")    #'delete-other-windows)
(global-set-key (kbd "M-2")    #'split-window-vertically)
(global-set-key (kbd "M-3")    #'split-window-horizontally)
(global-set-key (kbd "C-c $")  #'toggle-truncate-lines)
(global-set-key (kbd "C-|")    #'align-regexp)
(global-set-key (kbd "M-[")    #'highlight-symbol-prev)
(global-set-key (kbd "M-]")    #'highlight-symbol-next)
(global-set-key (kbd "M-{")    #'highlight-symbol-prev-in-defun)
(global-set-key (kbd "M-}")    #'highlight-symbol-next-in-defun)
(global-set-key (kbd "<f5>")   #'my-compile)
(global-set-key (kbd "<f6>")   #'my-recompile)
(global-set-key (kbd "M-<f5>") #'my-flycheck-compile)
(global-set-key (kbd "M-<f6>") #'my-flycheck-compile)

(global-set-key (kbd "<mouse-8>") #'xref-pop-marker-stack)
(global-set-key (kbd "<mouse-9>") #'xref-find-definitions)
;(global-set-key (kbd "<mouse-4>") #'scroll-up-line)
;(global-set-key (kbd "<mouse-5>") #'scroll-down-line)

(setenv "EDITOR" "emacsclient -c")

(setq auto-window-vscroll nil)

(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;; Improve performance of very long lines
(setq-default bidi-display-reordering 'left-to-right)

;;; geogriffin.el ends here
