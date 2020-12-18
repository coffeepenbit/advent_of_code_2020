;;; test-day5.el --- Day 4 Advent of Code 2020

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
(unload-feature 'day5)
(load-file "../day5.el")


(ert-deftest test-day-5--boarding-passes nil
  (let ((boarding-passes-string "BFFBFBBRLR
FFFFBBBLRR"))
    (should (equal '((?B ?F ?F ?B ?F ?B ?B ?R ?L ?R)
                     (?F ?F ?F ?F ?B ?B ?B ?L ?R ?R ))
                   (day5--boarding-passes boarding-passes-string)))))


(ert-deftest test-day5--seat-row-column nil
  (let ((row-range '(1 1))
        (column-range '(2 2))
        (boarding-pass ""))
    (should (equal '(0 0) (day5--seat-row-column boarding-pass row-range column-range)))))


(ert-deftest test-day5--seat-id nil
  (should (equal 0 (day5--seat-id 0 0)))
  (should (equal 18 (day5--seat-id 2 2))))


(provide 'test-day5)
;;; test-day5.el ends here
