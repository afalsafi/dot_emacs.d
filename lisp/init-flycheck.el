;;; init-flycheck.el --- Initialise flycheck package

;;; Commentary:
;;

(require 'flycheck)

;;; Code:

;; use flycheck for syntax checking in all buffers
(flycheck-mode t)
(global-flycheck-mode +1)

;; use flycheck-pos-tip to display errors
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

;; hide pos-tip automatically
(eval-after-load 'pos-tip
  '(defadvice flycheck-hide-error-buffer (after hide-pos-tip activate)
     (pos-tip-hide)))

(require 'flycheck-color-mode-line)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

;; diminish to check icon from fontawesome
(eval-after-load 'diminish
  '(diminish 'flycheck-mode (concat " " [#xF00C])))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
