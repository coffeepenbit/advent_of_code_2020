;;; test-day6.el --- day 6 Advent of Code 2020

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
;; Reset day6.
(when (featurep 'day6)
  (unload-feature 'day6))
(when (featurep 'test-day6)
  (progn (ert-delete-all-tests)
         (unload-feature 'test-day6)))
(load-file "../day6.el")


(ert-deftest test-day6-part1-solution nil
  (should (equal 6930 (day6-part1-solution))))


(ert-deftest test-day6--all-group-answers nil
  (let ((answer-string "abc

xyz
qwe"))
    (should (equal '((?a ?b ?c) (?x ?y ?z ?q ?w ?e)) (day6--all-group-answers answer-string)))))


(ert-deftest test-day6--unique-group-answers nil
  (should (equal '(?A ?B) (day6--unique-group-answers '(?A ?B ?A)))))


(provide 'test-day6)
;;; test-day6.el ends here
