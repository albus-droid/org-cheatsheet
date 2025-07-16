;;; org-cheatsheet.el --- Org Cheatsheet for easy syntax lookup-*- lexical-binding: t; -*-
;;
;; Copyright (C) 2025
;;
;; Author:  <albin@gentoo-book>
;; Maintainer:  <albin@gentoo-book>
;; Created: July 16, 2025
;; Modified: July 16, 2025
;; Version: 0.0.1
;; Keywords: convenience tools
;; Homepage: https://github.com/albus-droid/org-cheatsheet
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;; This package provides a quick cheatsheet for syntax lookup while writing in org
;;
;;; Code:
(defconst org-cheatsheet--content
  "
* Org Syntax Cheatsheet

** Headings
* Heading 1
** Heading 2
*** Heading 3

** Lists
- unordered item
+ another unordered item
1. ordered
2. ordered

** Checkboxes
- [ ] Task to do
- [X] Completed task
- [-] In progress

** Emphasis
*bold*
/italic/
_underline_
=verbatim=
~code~
+strike-through+

** Links
[[https://orgmode.org][Org-Mode website]]

** Tables
| Name | Age |
|------|-----|
| Tom  | 23  |

** Blocks
#+BEGIN_SRC language
code
#+END_SRC

** Footnotes
Footnote[fn:1]

[fn:1] Footnote text.

** Drawers
:LOGBOOK:
- Note
:END:

** Export options
#+TITLE: Title
#+AUTHOR: Name

"
  "Org syntax cheatsheet content.")

(defun org-cheatsheet-show ()
  "Show a buffer with cheatsheet."
  (interactive)
  (let ((buf (get-buffer-create "*Org Cheatsheet*")))
    (with-current-buffer buf
      (read-only-mode -1)
      (erase-buffer)
      (insert org-cheatsheet--content)
      (org-mode)
      (goto-char (point-min))
      (read-only-mode 1))
    (pop-to-buffer buf)))

(provide 'org-cheatsheet)
;;; org-cheatsheet.el ends here
;;;
