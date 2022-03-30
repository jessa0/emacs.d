;;; geogriffin-custom.el --- geogriffin's emacs customization file.
;; -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(async-shell-command-buffer 'new-buffer)
 '(async-shell-command-display-buffer nil)
 '(auth-source-save-behavior nil)
 '(auth-sources '(macos-keychain-internet macos-keychain-generic "~/.authinfo.gpg"))
 '(bookmark-save-flag 1)
 '(c-basic-offset 2)
 '(column-number-mode t)
 '(comment-column 80)
 '(comment-fill-column 160)
 '(comment-multi-line t)
 '(company-backends
   '(company-capf company-files
                  (company-gtags company-keywords)))
 '(company-frontends
   '(company-pseudo-tooltip-unless-just-one-frontend company-echo-metadata-frontend company-preview-if-just-one-frontend))
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-require-match ''company-explicit-action-p)
 '(company-selection-wrap-around t)
 '(company-show-numbers t)
 '(company-show-quick-access t)
 '(company-tooltip-idle-delay 0.1)
 '(company-transformers '(company-sort-by-backend-importance))
 '(compilation-always-kill t)
 '(compilation-context-lines 5)
 '(compilation-scroll-output 'first-error)
 '(compilation-skip-threshold 1)
 '(compilation-window-height 10)
 '(create-lockfiles nil)
 '(custom-enabled-themes '(deeper-blue))
 '(default-frame-alist '((width . 120) (left-fringe) (right-fringe)))
 '(delete-by-moving-to-trash t)
 '(desktop-lazy-idle-delay 86400)
 '(desktop-lazy-verbose nil)
 '(desktop-load-locked-desktop nil)
 '(desktop-restore-eager 0)
 '(desktop-restore-in-current-display nil)
 '(desktop-save t)
 '(desktop-save-mode t)
 '(dired-dwim-target 'dired-dwim-target-next)
 '(dired-listing-switches "-lh")
 '(dired-sidebar-should-follow-file t)
 '(dired-sidebar-subtree-line-prefix "__")
 '(dired-sidebar-theme 'vscode)
 '(dired-sidebar-width 20)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-format "%m/%d %H:%M")
 '(echo-keystrokes 0.1)
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(edts-dialyzer-inhibit-on-compile nil)
 '(eldoc-minor-mode-string nil)
 '(electric-pair-mode t)
 '(erlang-check-module-name t)
 '(erlang-electric-newline-inhibit nil)
 '(erlang-electric-semicolon-insert-blank-lines 1)
 '(erlang-new-clause-with-arguments t)
 '(eval-expression-print-level nil)
 '(fill-column 120)
 '(flycheck-check-syntax-automatically
   '(save idle-change idle-buffer-switch new-line mode-enabled))
 '(flycheck-display-errors-delay 0.3)
 '(flycheck-erlang-dialyzer-executable nil)
 '(flycheck-erlang-include-path '("../include"))
 '(flycheck-indication-mode 'right-fringe)
 '(flycheck-keymap-prefix "c")
 '(flycheck-mode-line-prefix "Fly")
 '(forge-owned-accounts
   '(("jessa0")
     ("container-build")
     ("glopfile")
     ("rustunnel")
     ("simple-raft-rs")
     ("voice-analyzer")))
 '(frame-auto-hide-function 'delete-frame)
 '(fringe-mode nil nil (fringe))
 '(gc-cons-threshold 100000000)
 '(gdb-display-io-nopopup t)
 '(gdb-display-source-buffer-action '(nil (inhibit-same-window . t)))
 '(gdb-restore-window-configuration-after-quit t)
 '(global-flycheck-mode t)
 '(global-semantic-idle-completions-mode nil nil (semantic/idle))
 '(global-semantic-idle-local-symbol-highlight-mode nil nil (semantic/idle))
 '(global-semantic-idle-summary-mode nil)
 '(global-subword-mode t)
 '(global-whitespace-mode t)
 '(grep-command
   "grep --color -nH --null --exclude=*~ --exclude-dir=.git -e ")
 '(grep-find-command
   '("find . -type f -exec grep --color -nH --null --exclude=*~ --exclude-dir=.git -e /dev/null \\{\\} +" . 80))
 '(gud-tooltip-mode t)
 '(gud-tooltip-modes
   '(gud-mode c-mode c++-mode fortran-mode python-mode rust-mode))
 '(highlight-symbol-idle-delay 0.2)
 '(highlight-symbol-occurrence-message nil)
 '(iconify-child-frame 'make-invisible)
 '(ido-auto-merge-work-directories-length -1)
 '(ido-case-fold t)
 '(ido-enable-dot-prefix t)
 '(ido-enable-flex-matching t)
 '(ido-mode 'both nil (ido))
 '(ido-ubiquitous-mode t)
 '(ido-use-virtual-buffers t)
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries 'right)
 '(indicate-empty-lines t)
 '(inhibit-startup-echo-area-message "geogriffin")
 '(inhibit-startup-screen t)
 '(initial-major-mode 'org-mode)
 '(initial-scratch-message nil)
 '(java-mode-hook '(subword-mode))
 '(kill-emacs-query-functions '(geogriffin-kill-emacs-query-function))
 '(lsp-auto-execute-action nil)
 '(lsp-document-sync-method nil)
 '(lsp-file-watch-ignored
   '(".idea" ".ensime_cache" ".eunit" "node_modules" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" ".bloop" ".metals" "target" "build"))
 '(lsp-file-watch-ignored-directories
   '(".idea" ".ensime_cache" ".eunit" "node_modules" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" ".bloop" ".metals" "target" "build"))
 '(lsp-file-watch-threshold 5000)
 '(lsp-headerline-breadcrumb-enable t)
 '(lsp-keep-workspace-alive nil)
 '(lsp-keymap-prefix "C-c l")
 '(lsp-lens-enable t)
 '(lsp-prefer-flymake nil)
 '(lsp-restart 'ignore)
 '(lsp-rust-analyzer-cargo-load-out-dirs-from-check t)
 '(lsp-rust-analyzer-cargo-run-build-scripts t)
 '(lsp-rust-analyzer-display-chaining-hints t)
 '(lsp-rust-analyzer-display-parameter-hints t)
 '(lsp-rust-analyzer-download-url
   "https://github.com/rust-analyzer/rust-analyzer/releases/download/nightly/rust-analyzer-linux")
 '(lsp-rust-analyzer-max-inlay-hint-length 20)
 '(lsp-rust-analyzer-proc-macro-enable t)
 '(lsp-rust-clippy-preference "on")
 '(lsp-rust-server 'rust-analyzer)
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-doc-position 'bottom)
 '(lsp-ui-doc-use-webkit t)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-sideline-delay 1.0)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-code-actions t)
 '(lsp-ui-sideline-show-diagnostics nil)
 '(lsp-ui-sideline-show-hover t)
 '(lsp-ui-sideline-show-symbol nil)
 '(magit-bury-buffer-function 'magit-restore-window-configuration)
 '(magit-commit-squash-confirm nil)
 '(magit-completing-read-function 'magit-ido-completing-read)
 '(magit-copy-revision-abbreviated t)
 '(magit-ediff-use-indirect-buffers t)
 '(magit-save-repository-buffers 'dontask)
 '(menu-bar-mode nil)
 '(mode-line-format
   '("%e" mode-line-client mode-line-modified mode-line-remote " " mode-line-buffer-identification " " mode-line-position
     (vc-mode vc-mode)
     mode-line-modes mode-line-misc-info mode-line-end-spaces))
 '(mouse-wheel-tilt-scroll t)
 '(ns-alternate-modifier 'super)
 '(ns-command-modifier 'meta)
 '(ns-right-alternate-modifier 'meta)
 '(package-archives
   '(("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-enable-at-startup t)
 '(package-native-compile t)
 '(package-selected-packages
   '(protobuf-mode lsp-sourcekit swift-mode delight treemacs-magit treemacs-projectile iedit ido-completing-read+ ripgrep lsp-java persistent-scratch undohist undo-propose lua-mode typescript-mode vscode-icon dired-narrow dired-ranger dired-sidebar dired-subtree bash-completion company yaml-mode forge projectile flx-ido toml-mode erlang flycheck-inline cargo rust-mode rust-playground which-key use-package magit-libgit lsp-ui magit-popup flycheck markdown-mode highlight-symbol magit))
 '(persistent-scratch-autosave-interval 30)
 '(persistent-scratch-autosave-mode t)
 '(persistent-scratch-backup-directory nil)
 '(persistent-scratch-what-to-save '(major-mode point narrowing text-properties))
 '(persp-keymap-prefix "")
 '(persp-mode-prefix-key "")
 '(persp-sort 'access)
 '(persp-state-default-file "~/.emacs.d/perspective")
 '(proced-auto-update-interval 1)
 '(proced-format-alist
   '((short pid euid tree pri rss majflt state pcpu start time
            (args comm))
     (medium pid euid tree pcpu pmem vsize rss ttname state start time
             (args comm))
     (long user euid group pid tree pri nice pcpu pmem vsize rss ttname state start time
           (args comm))
     (verbose user euid group egid pid ppid tree pgrp sess pri nice pcpu pmem state thcount vsize rss ttname tpgid minflt majflt cminflt cmajflt start time utime stime ctime cutime cstime etime
              (args comm))))
 '(proced-grammar-alist
   '((euid "EUID" "%d" right proced-< nil
           (euid pid)
           (nil t nil))
     (user "User" nil left proced-string-lessp nil
           (user pid)
           (nil t nil))
     (egid "EGID" "%d" right proced-< nil
           (egid euid pid)
           (nil t nil))
     (group "Group" nil left proced-string-lessp nil
            (group user pid)
            (nil t nil))
     (comm "Command" nil left proced-string-lessp nil
           (comm pid)
           (nil t nil))
     (state "S" nil left proced-string-lessp nil
            (state pid)
            (nil t nil))
     (ppid "PPID" "%d" right proced-< nil
           (ppid pid)
           ((lambda
              (ppid)
              (proced-filter-parents proced-process-alist ppid))
            "refine to process parents"))
     (pgrp "PGrp" "%d" right proced-< nil
           (pgrp euid pid)
           (nil t nil))
     (sess "Sess" "%d" right proced-< nil
           (sess pid)
           (nil t nil))
     (ttname "TTY" proced-format-ttname left proced-string-lessp nil
             (ttname pid)
             (nil t nil))
     (tpgid "TPGID" "%d" right proced-< nil
            (tpgid pid)
            (nil t nil))
     (minflt "MinFlt" "%d" right proced-< nil
             (minflt pid)
             (nil t t))
     (majflt "MajFlt" "%d" right proced-< nil
             (majflt pid)
             (nil t t))
     (cminflt "CMinFlt" "%d" right proced-< nil
              (cminflt pid)
              (nil t t))
     (cmajflt "CMajFlt" "%d" right proced-< nil
              (cmajflt pid)
              (nil t t))
     (utime "UTime" proced-format-time right proced-time-lessp t
            (utime pid)
            (nil t t))
     (stime "STime" proced-format-time right proced-time-lessp t
            (stime pid)
            (nil t t))
     (time "Time" proced-format-time right proced-time-lessp t
           (time pid)
           (nil t t))
     (cutime "CUTime" proced-format-time right proced-time-lessp t
             (cutime pid)
             (nil t t))
     (cstime "CSTime" proced-format-time right proced-time-lessp t
             (cstime pid)
             (nil t t))
     (ctime "CTime" proced-format-time right proced-time-lessp t
            (ctime pid)
            (nil t t))
     (pri "Pr" "%d" right proced-< t
          (pri pid)
          (nil t t))
     (nice "Ni" "%3d" 3 proced-< t
           (nice pid)
           (t t nil))
     (thcount "THCount" "%d" right proced-< t
              (thcount pid)
              (nil t t))
     (start "Start" proced-format-start 6 proced-time-lessp nil
            (start pid)
            (t t nil))
     (vsize "VSize" "%d" right proced-< t
            (vsize pid)
            (nil t t))
     (rss "RSS" "%d" right proced-< t
          (rss pid)
          (nil t t))
     (etime "ETime" proced-format-time right proced-time-lessp t
            (etime pid)
            (nil t t))
     (pcpu "%CPU" "%.1f" right proced-< t
           (pcpu pid)
           (nil t t))
     (pmem "%Mem" "%.1f" right proced-< t
           (pmem pid)
           (nil t t))
     (args "Args" proced-format-args left proced-string-lessp nil
           (args pid)
           (nil t nil))
     (pid "PID" "%d" right proced-< nil
          (pid)
          ((lambda
             (ppid)
             (proced-filter-children proced-process-alist ppid))
           "refine to process children"))
     (tree "Tree" proced-format-tree left nil nil nil nil)))
 '(projectile-enable-caching t)
 '(projectile-enable-idle-timer t)
 '(projectile-globally-ignored-directories
   '(".idea" ".vscode" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" ".ccls-cache" ".clangd" "target" ".cargo"))
 '(projectile-per-project-compilation-buffer t)
 '(projectile-project-search-path '(("~/work" . 1)))
 '(projectile-run-use-comint-mode t)
 '(projectile-sort-order 'recently-active)
 '(projectile-switch-project-action 'projectile-vc)
 '(read-quoted-char-radix 10)
 '(recentf-max-saved-items 100)
 '(recentf-mode t)
 '(rust-always-locate-project-on-open t)
 '(rust-indent-method-chain t)
 '(save-place-mode t)
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(semantic-default-submodes
   '(global-semantic-highlight-func-mode global-semantic-decoration-mode global-semantic-stickyfunc-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode global-semantic-mru-bookmark-mode global-semantic-idle-local-symbol-highlight-mode global-semantic-highlight-edits-mode))
 '(semantic-idle-scheduler-idle-time 0.1)
 '(semantic-mode nil)
 '(sentence-end-double-space nil)
 '(shell-command-dont-erase-buffer 'beg-last-out)
 '(shell-completion-execonly nil)
 '(shell-dynamic-complete-functions
   '(bash-completion-dynamic-complete comint-c-a-p-replace-by-expanded-history shell-environment-variable-completion shell-command-completion shell-c-a-p-replace-by-expanded-directory pcomplete-completions-at-point shell-filename-completion comint-filename-completion))
 '(shift-select-mode nil)
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(size-indication-mode nil)
 '(tab-bar-history-mode t)
 '(tab-bar-mode nil)
 '(tab-bar-select-tab-modifiers '(super))
 '(tab-bar-show nil)
 '(tab-bar-tab-hints t)
 '(tool-bar-mode nil)
 '(tramp-auto-save-directory "~/.emacs.d/auto-saves/")
 '(tramp-connection-timeout 10)
 '(tramp-default-method "ssh")
 '(tramp-encoding-shell "/bin/bash")
 '(tramp-remote-path
   '(tramp-own-remote-path tramp-default-remote-path "/bin" "/usr/bin" "/sbin" "/usr/sbin" "/usr/local/bin" "/usr/local/sbin" "/local/bin" "/local/freeware/bin" "/local/gnu/bin" "/usr/freeware/bin" "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin" "/opt/sbin" "/opt/local/bin"))
 '(use-dialog-box nil)
 '(use-file-dialog nil)
 '(view-read-only t)
 '(view-try-extend-at-buffer-end t)
 '(wdired-allow-to-change-permissions 'advanced)
 '(wdired-use-dired-vertical-movement 'sometimes)
 '(which-key-idle-delay 1.0)
 '(which-key-idle-secondary-delay 0.05)
 '(which-key-mode t)
 '(which-key-show-early-on-C-h t)
 '(whitespace-style
   '(face trailing empty indentation::space space-before-tab::tab tab-mark))
 '(x-stretch-cursor t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "gray80" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "DAMA" :family "Ubuntu Mono"))))
 '(hiwin-face ((t (:background "unspecified-bg"))))
 '(lsp-ui-sideline-current-symbol ((t (:foreground "white" :box (:line-width (1 . -1) :color "white") :weight ultra-bold :height 0.99))))
 '(magit-diff-added ((t (:background "#335533" :foreground "black"))))
 '(magit-diff-added-highlight ((t (:background "green" :foreground "black"))))
 '(magit-diff-removed ((t (:background "#553333" :foreground "black"))))
 '(magit-diff-removed-highlight ((t (:background "#663333" :foreground "black"))))
 '(mode-line ((t (:background "DeepPink3" :foreground "black" :box (:line-width 1 :style released-button)))))
 '(mode-line-inactive ((t (:background "DeepPink4" :foreground "black"))))
 '(tab-bar ((t (:inherit variable-pitch :box nil :height 85))))
 '(tab-bar-tab ((t (:inherit tab-bar :box (:line-width 1 :style released-button)))))
 '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :box nil))))
 '(whitespace-empty ((t (:background "red"))))
 '(whitespace-indentation ((t (:background "red"))))
 '(whitespace-space-before-tab ((t (:background "red")))))

;;; geogriffin-custom.el ends here
