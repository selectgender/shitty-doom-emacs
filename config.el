;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "ivy"
      user-mail-address "sylviaviajung@gmail.com")

(setq doom-theme 'doom-feather-dark)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/dox/org/")

(after! forge
  (setq auth-sources '("~/.authinfo")))

(after! company
  (setq company-idle-delay nil))

(custom-set-faces
 '(org-level-1 ((t (:extend t :height 1.2))))
 '(org-level-2 ((t (:extend t :height 1.1))))
 '(org-level-3 ((t (:extend t :height 1.05))))
 '(org-level-4 ((t (:extend t :height 1.05))))
 '(org-level-5 ((t (:extend t :height 1.05))))
 '(org-level-6 ((t (:extend t :height 1.05))))
 '(org-level-7 ((t (:extend t :height 1.05))))
 '(org-level-8 ((t (:extend t :height 1.05)))))

(map!
 :map evil-normal-state-map
 "j" #'evil-scroll-down
 "k" #'evil-scroll-up
 "l" #'find-file
 ";" #'dired
 ; put last because I dont use this for shit
 "h" #'consult-ripgrep)

(map!
 :map evil-normal-state-map
 "C-h" #'evil-window-left
 "C-j" #'evil-window-down
 "C-k" #'evil-window-up
 "C-l" #'evil-window-right)

(map!
 :map evil-normal-state-map
 ; "s" #'evil-avy-goto-char-2
 "f" #'evil-avy-goto-char)

(setq-default mode-require-final-newline nil)
(setq-default require-final-newline nil)
(setq mode-require-final-newline nil)
(setq require-final-newline nil)
