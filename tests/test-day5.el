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
(when (featurep 'day5)
  (unload-feature 'day5))
(load-file "../day5.el")


(ert-deftest test-day5-part1-solution nil
  (should (equal 1 (day5-part1-solution))))


(ert-deftest test-day-5--boarding-passes nil
  (let ((boarding-passes-string "BFFBFBBRLR
FFFFBBBLRR"))
    (should (equal '((?B ?F ?F ?B ?F ?B ?B ?R ?L ?R)
                     (?F ?F ?F ?F ?B ?B ?B ?L ?R ?R ))
                   (day5--boarding-passes boarding-passes-string)))))


(ert-deftest test-day5--seat-row-column nil
  (let ((row-range '(1 1))
        (column-range '(2 2))
        (boarding-pass nil))
    (should (equal '(1 2) (day5--seat-row-column boarding-pass
                                                 row-range
                                                 column-range))))
  (let ((row-range '(0 127))
        (column-range '(0 7))
        (boarding-pass '(?B ?F ?F ?B ?F ?B ?B ?R ?L ?R)))
    (should (equal '(75 5) (day5--seat-row-column boarding-pass
                                                  row-range
                                                  column-range)))))


(ert-deftest test-day5--halve-range nil
  (should (equal '(10 10) (day5--halve-range '(10 10) 'low)))
  (should (equal '(10 10) (day5--halve-range '(10 10) 'high)))
  (should (equal '(0 7) (day5--halve-range '(0 15) 'low)))
  (should (equal '(4 7) (day5--halve-range '(0 7) 'high)))
  (should (equal '(4 5) (day5--halve-range '(4 7) 'low)))
  (should (equal '(6 7) (day5--halve-range '(4 7) 'high)))
  (should (equal '(6 6) (day5--halve-range '(6 7) 'low)))
  (should (equal '(7 7) (day5--halve-range '(6 7) 'high))))


(ert-deftest test-day5--range-midpoint nil
  (should (equal 3.5 (day5--range-midpoint '(0 7))))
  (should (equal 5.5 (day5--range-midpoint '(4 7)))))


(ert-deftest test-day5--seat-id nil
  (should (equal 0 (day5--seat-id '(0 0))))
  (should (equal 18 (day5--seat-id '(2 2))))
  (should (equal 605 (day5--seat-id '(75 5)))))


(provide 'test-day5)
;;; test-day5.el ends here
