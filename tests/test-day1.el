;;; test-day1.el --- Day 1 Advent of Code 2020            -*- lexical-binding: t; -*-

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
(load-file "../day1.el")

(ert-deftest day1-test-part1-solution ()
  (should (equal 1006875 (day1-part1-solution))))


(ert-deftest day1-test--passes-criteria-p ()
  (should (equal t (day1--passes-criteria-p (list 1 2) (list 2019 1)))))


(ert-deftest day1-test--indices-are-unique-p ()
  (should (equal nil (day1--indices-are-unique-p '(1 1))))
  (should (equal t (day1--indices-are-unique-p '(1 2))))
  (should (equal nil (day1--indices-are-unique-p '(1 1 2))))
  (should (equal t (day1--indices-are-unique-p '(1 2 3)))))


(ert-deftest day1-test--elems-sum-to-2020-p ()
  (should (equal t (day1--elems-sum-to-2020-p '(2020))))
  (should (equal nil (day1--elems-sum-to-2020-p '(2019))))
  (should (equal t (day1--elems-sum-to-2020-p '(2019 1)))))





(provide 'test-day1)
;;; test-day1.el ends here
