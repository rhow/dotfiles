; Robert J. Chassell 6 December '85 simplified 9 January '86 Jerome E. Puzo

; This is a sample .emacs file for GNU Emacs on a Vax running BSD 4.2 Unix.
; Lines that begin with a semi-colon are comments not executed by Emacs.

; TEXT MODE AND AUTO-FILL-MODE

; The next two commands put Emacs into text mode and auto-fill-mode 
; when Emacs starts.  They are designed for writers who want to start
; writing prose rather than code.
; A programmer might want to enter Lisp mode or C mode.

(setq default-major-mode 'text-mode)
(setq text-mode-hook 'turn-on-auto-fill)

; Sample KEY BINDINGS for a Z-29 terminal

; These functions show how to bind keys to commands.  
; The keyboard commands continue to work: for example, you can go
; forward by word either with the right arrow key or with .
; If you do not know what meta sequence a function key returns,
; you can use the `describe key' function: type control-h k and then 
; the key. Emacs will tell you the meta sequence and any commands
; to which the key is bound.
; note: \e indicates the esc character

(global-set-key "\eT" 'backward-kill-word) ; function key F2
(global-set-key "\eU" 'kill-word)          ; function key F3
(global-set-key "\eD" 'backward-word)      ; function key left-arrow
(global-set-key "\eC" 'forward-word)       ; function key right-arrow
(global-set-key "\eB" 'scroll-up)          ; function key up-arrow
(global-set-key "\eA" 'scroll-down)        ; function key down-arrow
(global-set-key "\eJ" 'forward-sentence)   ; function key erase-key
(global-set-key "\eH" 'backward-sentence)  ; function key home-key
(global-set-key "\eP" 'goto-line)          ; function key F6

;; ======================================
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
;; ======================================

(add-to-list 'load-path "~/.emacs.d/site-lisp/")

(autoload 'json-mode "json-mode" "Json Mode." t)
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'yaml-mode "yaml-mode" "Major mode for editing YAML files" t)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

;; ==== Indention functions
(defun my-indent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N +2))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(defun my-unindent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N -2))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(global-set-key ">" 'my-indent-region)
(global-set-key "<" 'my-unindent-region)

; Example of how to specify control key:
; to redefine control-y to go to the start of the line (like control-a)
; (global-set-key "\C-y" 'beginning-of-line) 

; Example of how to cancel a key binding:
; (global-unset-key "\C-y)

; UPDATING EMACS

; After writing a function in your .emacs file, you can send the 
; changed information to the rest of emacs by entering meta-control-x .

; This command finds the function around or following the point. 
; As soon as you do this, you can begin to use your new function.

;(mapc (lambda (mode-hook) (add-hook mode-hook 'turn-on-watchwords))
;        '(c-mode-common-hook tcl-mode-hook emacs-lisp-mode-hook
;          ruby-mode-hook java-mode-hook haskell-mode-hook
;          ess-mode-hook python-mode-hook sh-mode-hook js2-mode-hook))
