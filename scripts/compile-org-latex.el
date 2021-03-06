
(add-to-list 'load-path (concat default-directory "org-mode/lisp/"))
(defun compile-org (in out)
  (require 'ox-latex)
  (require 'org-table)
  (find-file in)
  (setf org-latex-image-default-width "\\defaultimagewidth"
        ;; org-latex-image-default-height "\\defaultimageheight"
        )
  ;; (setf org-latex-image-default-width "\\maxwidth{\\defaultimagewidth}"
  ;;       ;; org-latex-image-default-height "\\defaultimageheight"
  ;;       )
  (org-latex-export-as-latex nil nil nil t)
  (write-file out))
