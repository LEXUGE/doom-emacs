;;; lang/haskell/+dante.el -*- lexical-binding: t; -*-
;;;###if (featurep! +dante)

(def-package! dante
  :hook (haskell-mode . dante-mode)
  :config
  (when (featurep! :feature syntax-checker)
    (flycheck-add-next-checker 'haskell-dante '(warning . haskell-hlint))))
