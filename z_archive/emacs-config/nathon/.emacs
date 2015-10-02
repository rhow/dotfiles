;;;;;;;;
;;;;;;;; Emacs Configuration for Nathan Wong (http://nathan.ca/)
;;;;;;;;
;;;;;;;; To setup, open emacs, ignore the errors, run M-x setup-emacs, then restart emacs.
;;;;;;;;
;;;;;;;; Additional dependencies expected in PATH for full operation:
;;;;;;;;  - phpformat
;;;;;;;;  - jsbeautify
;;;;;;;;  - gofmt and gocode
;;;;;;;;

;;;; packages. this is at the top so setup-emacs can run even without anything else available
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq package-list '(2048-game
		     ac-js2
		     auto-complete
		     dash
		     flymake-easy
		     flymake-php
		     js2-mode
		     multiple-cursors
		     php-eldoc
		     php-mode
		     popup
		     s
		     simple-httpd
		     skewer-mode
		     web-mode
		     yasnippet))
(defun setup-emacs ()
  (interactive)
  (package-initialize)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package))))

;;;; misc settings just to tidy things up
(set-face-foreground 'minibuffer-prompt "white")
(setq default-frame-alist (append (list
				   '(width  . 81)
				   '(height . 40))
				  default-frame-alist))
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message "root")
(setq initial-scratch-message nil)
(setq make-backup-files nil) ; don't backup or auto-save
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)
(fset 'yes-or-no-p 'y-or-n-p) ; yes/no => y/n prompts
(menu-bar-mode 0) ; remove top menu bar since we're mouse-less anyway
(set-fill-column 97) ; makes M-q wrap text (e.g. comments) to 97 chars

(setq mark-even-if-inactive nil) ; do not kill invisible "region" if mark inactive
(transient-mark-mode)
(electric-indent-mode)

(global-set-key (kbd "C-M-h") 'delete-region) ; delete region on alt+shift+backspace
(global-set-key "\C-l" 'goto-line) ; ctrl+l go to line

(global-set-key (kbd "C-x w") 'visual-line-mode) ; ctrl+x w toggle visual line mode (good for editing text)
(global-set-key (kbd "C-x x") 'xterm-mouse-mode) ; ctrl+x x toggle xterm moues mode (enables scrolling)

;;;; run "./r" when you hit f7 to allow any "project run" type command (e.g. make, make test, php -q x.php, etc.)
(define-key global-map [(f7)]
  (lambda ()
    (interactive)
    (shell-command "([ -f ./r ] && ./r) || ([ -f ../r ] && cd ../ && ./r) || ([ -f ../../r ] && cd ../../ && ./r) || echo 'no ./r script'" nil nil)))

;;;; shortcuts for bookmraks; f9 and f11 for adding a bookmark,
;;;; f10 and f12 for going to them (respectively)
(global-set-key [(f9)] (lambda () (interactive) (bookmark-set "b910")))
(global-set-key [(f10)] (lambda () (interactive) (bookmark-jump "b910")))
(global-set-key [(f11)] (lambda () (interactive) (bookmark-set "b1112")))
(global-set-key [(f12)] (lambda () (interactive) (bookmark-jump "b1112")))

;;;; ctrl+o for easily searching for files in the directory in which emacs was
;;;; launched. this effectively creates a "project search" function.
(setq load-dir (replace-regexp-in-string "[ \t\n]*\\'" ""
					 (shell-command-to-string "pwd -P")))
(defun locate-curdir ()
  (interactive
   (let ((locater (read-from-minibuffer "Locate: " nil nil
					nil 'locate-history-list)))
     (locate-with-filter locater load-dir))))
(global-set-key "\C-o" 'locate-curdir)
(add-hook 'c++-mode-hook
	  (lambda ()
	    (auto-complete-mode)
	    (setq indent-tabs-mode t)
	    (setq tab-width 4)
	    (set-fill-column 97)
	    (define-key c++-mode-map "\M-o" 'ff-find-other-file)))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;;; similarly, set alt+o to search IN files (rgrep) NOTE: conflicts with C++ find-other-file, so we do alt+p too
(global-set-key "\M-o" 'rgrep)
(global-set-key "\M-p" 'rgrep)

;;;; provide alt+n/p keys that act just like ctrl+n/p, except that it scrolls
;;;; without moving the cursor (for moving around/manually centering the view-port)
(global-set-key "\M-n" (lambda () (interactive) (scroll-up 1)) )
(global-set-key "\M-p" (lambda () (interactive) (scroll-down 1)) )

;;;; home and end keys should take you to beginning and end of lines
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)
;;;; these are some super ugly hacks to make PuTTY work as expected.
(define-key global-map "\M-[1~" 'beginning-of-line)
(define-key global-map [select] 'end-of-line)
(if (eq system-uses-terminfo t)
    (progn
      (define-key key-translation-map [\e] [\M])
      (define-key input-decode-map "\e[H" [home])
      (define-key input-decode-map "\e[F" [end])
      (define-key input-decode-map "\e[D" [S-left])
      (define-key input-decode-map "\e[C" [S-right])
      (define-key input-decode-map "\e[A" [S-up])
      (define-key input-decode-map "\e[B" [S-down])
      (define-key input-decode-map "\e[C" [S-right])
      ))

;;;; buffer cycling. F6 and ctrl+x ctrl+x to traverse buffers: cycles buffers if quick, toggles if pause
(defvar LIMIT 0)
(defvar time 0)
(defvar mylist nil)

(defun time-now ()
  (car (cdr (current-time))))

(defun bubble-buffer ()
  (interactive)
  (if (or (> (- (time-now) time) LIMIT) (null mylist))
      (progn (setq mylist (copy-alist (buffer-list)))
	     (delq (get-buffer " *Minibuf-0*") mylist)
	     (delq (get-buffer " *Minibuf-1*") mylist)))
  (bury-buffer (car mylist))
  (setq mylist (cdr mylist))
  (setq newtop (car mylist))
  (switch-to-buffer (car mylist))
  (setq rest (cdr (copy-alist mylist)))
  (while rest
    (bury-buffer (car rest))
    (setq rest (cdr rest)))
  (setq time (time-now)))
(global-set-key [f6] 'bubble-buffer)
(global-set-key (kbd "C-x C-x") 'bubble-buffer)

;;;; buffer selection. make ctrl+x b more interactive, and ignore internal buffers
;;;; note that the arrow keys move between matches/duplicates (e.g. if two buffers are the same name)
(iswitchb-mode 1)
(defun iswitchb-local-keys ()
  (mapc (lambda (K) 
	  (let* ((key (car K)) (fun (cdr K)))
	    (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
	'(("<right>" . iswitchb-next-match)
	  ("<left>"  . iswitchb-prev-match)
	  ("<up>"    . ignore)
	  ("<down>"  . ignore))))
(add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)
(add-to-list 'iswitchb-buffer-ignore "^ ")
(add-to-list 'iswitchb-buffer-ignore "*Messages*")
(add-to-list 'iswitchb-buffer-ignore "*ECB")
(add-to-list 'iswitchb-buffer-ignore "*Buffer")
(add-to-list 'iswitchb-buffer-ignore "*Completions")
(add-to-list 'iswitchb-buffer-ignore "*ftp ")
(add-to-list 'iswitchb-buffer-ignore "*bsh")
(add-to-list 'iswitchb-buffer-ignore "*jde-log")
(add-to-list 'iswitchb-buffer-ignore "^[tT][aA][gG][sS]$")

;;;; kill-buffer of the current buffer WITHOUT killing the window in the process with
;;;; C-x - (minus), which is right next to C-x 0 to close the window.
(defun kill-cur ()
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x -") 'kill-cur)

;;;; ctrl+x p goes "previous" buffer (next to ctrl+x o)
(defun prev-window ()
  (interactive)
  (other-window -1))
(global-set-key (kbd "C-x p") 'prev-window)

;;;; golang. autocomplete (dropdown), eldoc (type/function info), gofmt on save
(require 'go-mode-load)
(add-hook 'go-mode-hook
	  (lambda ()
	    (go-eldoc-setup)
	    (require 'auto-complete)
	    (require 'go-autocomplete)
	    (require 'auto-complete-config)
	    (auto-complete-mode)
	    (define-key ac-mode-map (kbd "M-,") 'auto-complete)
	    (add-hook 'before-save-hook 'gofmt-before-save)))

;;;; javascript. autocomplete (dropdown), built-in jslint (underlining and minibuf), jsbeautify
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
(defun jsformatter ()
  "Run js-beatifier on the current buffer"
  
  (interactive)
  ;; for some reason save-excursion isn't working
  ;; probably because shell-command-on-region deletes the contents of the
  ;; region before filling in the new values
  ;; so we will save the point/mark by hand
  ;; similarly we can't use push-mark/pop-mark
  (let ((old-mark (mark t)) (old-point (point)))
    (save-restriction
      (let (deactivate-mark)
        (widen)
        (shell-command-on-region (point-min) (point-max) "jsbeautify - " t t shell-command-default-error-buffer)))
    (goto-char (min old-point (point-max)))
    (deactivate-mark)))

(add-hook 'js2-mode-hook
          (lambda ()
	    (auto-complete-mode)
	    (setq indent-tabs-mode t)
	    (setq tab-width 4)
	    (set-fill-column 97)
	    (local-set-key [(f8)] 'jsformatter)))

;;;; PHP. eldoc (function info), flymake (underlining errors), phpformatter
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

;; format PHP, inspired by golang's gofmt invocation
(defun phpformatter ()
  "Run phpformat on the current buffer"
  
  (interactive)
  ;; for some reason save-excursion isn't working
  ;; probably because shell-command-on-region deletes the contents of the
  ;; region before filling in the new values
  ;; so we will save the point/mark by hand
  ;; similarly we can't use push-mark/pop-mark
  (let ((old-mark (mark t)) (old-point (point)))
    (save-restriction
      (let (deactivate-mark)
        (widen)
        (shell-command-on-region (point-min) (point-max) "phpformat - " t t shell-command-default-error-buffer)))
    (goto-char (min old-point (point-max)))
    (deactivate-mark)))

(add-hook 'php-mode-hook
	  '(lambda ()
	     ;; auto-highlight syntax errors as you type
	     (require 'flymake)
	     (defun flymake-php-init ()
	       "Use php to check the syntax of the current file."
	       (let* ((temp (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
		      (local (file-relative-name temp (file-name-directory buffer-file-name))))
		 (list "php" (list "-f" local "-l"))))
	     (add-to-list 'flymake-err-line-patterns
			  '("\\(Parse\\|Fatal\\) error: +\\(.*?\\) in \\(.*?\\) on line \\([0-9]+\\)$" 3 4 nil 2))
	     (add-to-list 'flymake-allowed-file-name-masks '("\\.php$" flymake-php-init))
	     (flymake-mode 1)

	     ;; eldoc
	     (auto-complete-mode)
	     (require 'php-eldoc-autoloads)
	     (php-eldoc-enable)
	     
	     ;; sane indenting for the way we write PHP
	     (setq indent-tabs-mode t)
	     (setq tab-width 4)
	     (c-set-style "bsd")
	     (setq c-argdecl-indent 0)
	     (setq c-label-offset -2)
	     (setq c-basic-offset 2)
	     (c-set-offset 'case-label '+)
	     (c-set-offset 'arglist-close 'c-lineup-arglist-operators)
	     (c-set-offset 'arglist-intro '+)
	     (c-set-offset 'arglist-cont-nonempty 'c-lineup-math)
	     (setq c-basic-offset 4)
	     (set-fill-column 97)

	     ;; formatter
	     (local-set-key [(f8)] 'phpformatter)))
(setq c-default-style "bsd"
      c-basic-offset 4)

;; sneak HTML-mode in here, although we don't use it much
(add-hook 'html-mode-hook
          (lambda ()
	    (setq indent-tabs-mode t)
	    (setq sgml-basic-offset 4)
	    (setq tab-width 4)
	    (local-set-key [(f8)] 'phpformatter)))

;;;; web-mode for mixed php/html (default for /views/ PHP files)
(add-to-list 'auto-mode-alist '("/\\(views\\|html\\|templates\\)/.*\\.php\\'" . web-mode))
(add-hook 'web-mode-hook
	  (lambda ()
	    (setq web-mode-html-offset 4)
	    (setq indent-tabs-mode t)
	    (setq tab-width 4)
	    (setq web-mode-markup-indent-offset 4)
	    (setq web-mode-css-indent-offset 4)
	    (setq web-mode-code-indent-offset 4)
	    (setq web-mode-indent-style 4)
	    (setq c-basic-offset 4)
	    (setq indent-tabs-mode t)
	    (set-fill-column 97)

	    (auto-complete-mode)
	    (require 'php-eldoc-autoloads)
	    (php-eldoc-enable)
	    (abbrev-mode)
	    
	    ;; treat < and > as symbols, so that back/forward word handles <HTML> and PHP-> properly
	    (modify-syntax-entry ?< ".")
	    (modify-syntax-entry ?> ".")

	    ;; phpformatter
	    (local-set-key [(f8)] (lambda () (interactive) (phpformatter) (web-mode)))))

;;;; mysql integration. ctrl+x m asks for credentials then opens mysql prompt
(setq sql-connection-alist
      '((pool-bsa
	 (sql-product 'mysql)
	 (sql-server "localhost")
	 (sql-user "root")
	 (sql-password "root")
	 (sql-database "bsa")
	 (sql-port 3306))))
(defun sql-connect-preset (name)
  "Connect to a predefined SQL connection listed in `sql-connection-alist'"
  (eval `(let ,(cdr (assoc name sql-connection-alist))
	   (cl-flet ((sql-get-login (&rest what)))
	     (sql-product-interactive sql-product)))))
(defun sql-bsa ()
  (interactive)
  (sql-connect-preset 'pool-bsa))

(global-set-key (kbd "C-x m") 'sql-bsa)

;;;; PHP repl integration (uses boris - should consider checking out boris-minor-mode instead)
(defun repl-bsa ()
  (interactive)
  (ansi-term "~/bsa/repl"))
(global-set-key (kbd "C-x n") 'repl-bsa)

;;;; make the tab key to do same as M-/ if it isn't in a position to indent.
;;;; additionally, set M-] to insert a real tab (right next to M-\ to strip whitespace)
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
    the minibuffer. Else, if mark is active, indents region. Else if
    point is at the end of a symbol, expands it. Else indents the
    current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (dabbrev-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
          (dabbrev-expand nil)
        (indent-for-tab-command)))))
(global-set-key [(tab)] 'smart-tab) ; TODO: add all modes?
(add-hook 'go-mode-hook
	  (lambda ()
	    (define-key go-mode-map [?\t] 'smart-tab)))
(add-hook 'js2-mode-hook
          (lambda ()
	    (local-set-key (kbd "M-]") (lambda () (interactive) (insert "\t")))
	    (local-set-key [?\t] 'smart-tab)))
(add-hook 'c-mode-hook
	  (lambda ()
	    (local-set-key (kbd "M-]") (lambda () (interactive) (insert "\t")))
	    (define-key c-mode-map [?\t] 'smart-tab)))
(add-hook 'c++-mode-hook
	  (lambda ()
	    (local-set-key (kbd "M-]") (lambda () (interactive) (insert "\t")))
	    (define-key c++-mode-map [?\t] 'smart-tab)))
(add-hook 'web-mode-hook
	  (lambda ()
	    (define-key web-mode-map [?\t] 'smart-tab)
	    (define-key web-mode-map (kbd "M-]") (lambda () (interactive) (insert "\t")))))
(add-hook 'php-mode-hook
	  (lambda ()
	    (define-key php-mode-map [?\t] 'smart-tab)
	    (define-key php-mode-map (kbd "M-]") (lambda () (interactive) (insert "\t")))))

;; ;;;; code-snippets plugin to insert common code chunks using C-x i (since we more
;; ;;;; or less _never_ insert a file like C-x i usually does). define as follows:
;; (setq code-snippets '(
;; 					  (test . "this is a test")
;; 					  (example . "// EXAMPLE: ")))
;; (load "code-snippets.el")
;; (defun code-snippet (arg)
;;   "Retrieve code snippets from the 'code-snippets array"
;;   (interactive (list (read-string "Snippet: ")))
;;   (let ((val (cdr (assq (intern arg) code-snippets))))
;; 	(if val
;; 		(insert val))))
;; (global-set-key (kbd "C-x i") 'code-snippet)

;;;; hard-coded ctrl+f code snippets (rarely is ctrl+f used for forward char, and ctrl+b is
;;;; already stolen by tmux, so safe and convenient shortcut key for this - menomic "fast!")
(add-hook 'php-mode-hook
	  (lambda ()
	    (define-key php-mode-map (kbd "C-f t") (lambda () (interactive) (insert "$this->")))
	    (define-key php-mode-map (kbd "C-f v") (lambda () (interactive) (insert "var_dump(")))))
(add-hook 'web-mode-hook
	  (lambda ()
	    (define-key web-mode-map (kbd "C-f t") (lambda () (interactive) (insert "$this->")))
	    (define-key web-mode-map (kbd "C-f C-t") (lambda () (interactive) (insert "<?php $this->")))
	    (define-key web-mode-map (kbd "C-f v") (lambda () (interactive) (insert "var_dump(")))
	    (define-key web-mode-map (kbd "C-f C-v") (lambda () (interactive) (insert "<?php var_dump(")))
	    (define-key web-mode-map (kbd "C-f C-o") (lambda () (interactive) (insert "<?php _o(")))
	    (define-key web-mode-map (kbd "C-f C-l") (lambda () (interactive) (insert "<?php _l(")))
	    (define-key web-mode-map (kbd "C-f ;") (lambda () (interactive) (insert "); ?>")))
	    (define-key web-mode-map (kbd "C-f :") (lambda () (interactive) (insert "): ?>")))
	    (define-key web-mode-map (kbd "C-f C-d") (lambda () (interactive) (insert "<?php $this->f->Field(")))
	    (define-key web-mode-map (kbd "C-f C-f") (lambda () (interactive) (insert "<?php foreach(")))
	    (define-key web-mode-map (kbd "C-f C-e") (lambda () (interactive) (insert "<?php end")))
	    (define-key web-mode-map (kbd "C-f C-i") (lambda () (interactive) (insert "<?php if (")))))

;;;; interactively resize the window with C-x ` and then the WASD keys
(defun v-resize (key)
  "interactively resize the window"
  (interactive "cUse WASD keys to enlarge/shrink")
  (cond
   ((eq key (string-to-char "d"))
    (enlarge-window-horizontally 1)
    (call-interactively 'v-resize))
   ((eq key (string-to-char "a"))
    (shrink-window-horizontally 1)
    (call-interactively 'v-resize))
   ((eq key (string-to-char "s"))
    (enlarge-window 1)
    (call-interactively 'v-resize))
   ((eq key (string-to-char "w"))
    (enlarge-window -1)
    (call-interactively 'v-resize))
   (t (push key unread-command-events))))
(global-set-key (kbd "C-x `") 'v-resize)

;;;; quick navigation. interactively move around starting with C-x C-q.
;;;; there's probably a better way to do this, but this works well enough.
;;;; WASD are like arrow keys, shift-W/shift-S are accelerated (5 lines),
;;;; shift-A/shift-D are begin/end of line, Q/Z are page up/down,
;;;; shift-Q/Z are begin/end of buffer, E/C are scroll up/down.
;;;; R toggles selection, T toggles to other end of region,
;;;; V copies, Y pastes, F switches to search, G quits quick nav mode.
;;;; the reason we ignore all of the errors is so that handling isn't
;;;; terminated upon end-of-buffer or beginning-of-buffer messages.
(defun quick-nav (key)
  "Quick navigation: interactively navigate the buffer quickly"
  (interactive
   "cWASD move, QZ/EC page/scroll, RTVY selection, F find, G stop")
  (cond
   ;; WASD navigation
   ((eq key (string-to-char "d"))
    (ignore-errors (forward-char 1))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "a"))
    (ignore-errors (backward-char 1))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "s"))
    (ignore-errors (next-line 1))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "w"))
    (ignore-errors (previous-line 1))
    (call-interactively 'quick-nav))
   ;; shift-WASD faster navigation
   ((eq key (string-to-char "D"))
    (ignore-errors (move-end-of-line nil))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "A"))
    (ignore-errors (move-beginning-of-line nil))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "S"))
    (ignore-errors (next-line 5))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "W"))
    (ignore-errors (previous-line 5))
    (call-interactively 'quick-nav))
   ;; E/C scrolling, Q/Z paging
   ((eq key (string-to-char "e"))
    (ignore-errors (scroll-down 1))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "c"))
    (ignore-errors (scroll-up 1))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "q"))
    (ignore-errors (scroll-down))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "z"))
    (ignore-errors (scroll-up))
    (call-interactively 'quick-nav))
   ;; shift-E/C scrolling faster, shift-Q/Z top/bottom
   ((eq key (string-to-char "E"))
    (ignore-errors (scroll-down 5))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "C"))
    (ignore-errors (scroll-up 5))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "Q"))
    (ignore-errors (beginning-of-buffer nil))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "Z"))
    (ignore-errors (end-of-buffer nil))
    (call-interactively 'quick-nav))

   ;; selection, r to start/stop, t for toggle point/mark, v/y for kill/yakn
   ((eq key (string-to-char "r"))
    (ignore-errors (if mark-active (deactivate-mark) (set-mark-command nil)))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "t"))
    (exchange-point-and-mark)
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "v"))
    (ignore-errors (kill-region (mark) (point)))
    (ignore-errors (deactivate-mark))
    (call-interactively 'quick-nav))
   ((eq key (string-to-char "y"))
    (ignore-errors (yank))
    (call-interactively 'quick-nav))

   ;; search
   ((eq key (string-to-char "f"))
    (isearch-forward)
    (call-interactively 'quick-nav))
   ;; quit (cancel)
   ((eq key (string-to-char "g"))
    nil)
   ;; otherwise, just ignore it (do nothing)
   (t (call-interactively 'quick-nav))
   ))
(global-set-key (kbd "C-x q") 'quick-nav)

;;;; the all-important 2048
(defun play-2048 ()
  (interactive)
  (require '2048-game)
  (2048-game))

;;;; theme.
(load-theme 'zenburn t)

;;;; clear the welcome message
(message "")
