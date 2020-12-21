;;; test-day7.el --- day 7 Advent of Code 2020

;; Copyright (C) 2020  coffeepenbit

;; Author: coffeepenbit
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:
;; Reset day7.
(when (featurep 'day7)
  (unload-feature 'day7))
(when (featurep 'test-day7)
  (progn (ert-delete-all-tests)
         (unload-feature 'test-day7)))
(load-file "../day7.el")


(ert-deftest test-bag nil
  (let ((bag (bag :name "pale green")))
    (should (equal "pale green" (oref bag :name)))))


(ert-deftest test-parse-all-bag-rules nil
  (let ((rules "striped fuchsia bags contain 3 dim cyan bags.")
        (expected '(#s(bag "striped fuchsia"
                           (" 3 dim cyan bags.")))))
    (let ((rules "striped fuchsia bags contain 3 dim cyan bags.
mirrored black bags contain 1 plaid red bag, 3 light gold bags, 3 wavy violet bags.")
          (expected '(#s(bag "striped fuchsia"
                             (" 3 dim cyan bags."))
                        #s(bag "mirrored black"
                               (" 1 plaid red bag" " 3 light gold bags" " 3 wavy violet bags.")))))
      (should (equal expected (parse-all-bag-rules rules))))))


(ert-deftest test-parse-bag-rule nil
  (let ((rule "striped fuchsia bags contain 3 dim cyan bags.")
        (expected '("striped fuchsia" (" 3 dim cyan bags."))))
    (should (equal expected (progn
                              (let ((bag-rule (parse-bag-rule rule)))
                                `(,(oref bag-rule :name) ,(oref bag-rule :contains))))))))


(ert-deftest test-bag-name nil
  (should (equal "striped fuchsia" (bag-name "striped fuchsia bags contain 3 dim cyan bags."))))


(ert-deftest test-bag-contains nil
  (should (equal '(" 1 plaid red bag" " 3 light gold bags" " 3 wavy violet bags.") (bag-contains "mirrored black bags contain 1 plaid red bag, 3 light gold bags, 3 wavy violet bags."))))


(ert-deftest test-contains-shiny-gold-p nil
  (should (equal t (contains-shiny-gold-p '("1 shiny gold bag"))))
  (should (equal nil (contains-shiny-gold-p '("1 dim cyan bag"))))
  (should (equal t (contains-shiny-gold-p '("1 dim cyan bag" "2 shiny gold bags")))))



(provide 'test-day7)
;;; test-day7.el ends here
