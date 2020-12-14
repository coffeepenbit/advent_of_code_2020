;;; test-day2.el --- Day 2 Advent of Code 2020            -*- lexical-binding: t; -*-

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
(load-file "../day2.el")

(ert-deftest day2-test-part1-solution ()
  (should (= 1 (let ((day2-input "1-3 c: cat"))
                 (day2-part1-solution)))))


(ert-deftest day2-test--password-valid-p ()
  (should (equal t (day2--password-valid-p '((rules . (1 3))
                                             (char . ?a)
                                             (password . "aardvark"))))))


(ert-deftest day2-test--char-in-string-ntimes ()
  (should (= (day2--char-in-string-ntimes ?c "cat") 1))
  (should (= (day2--char-in-string-ntimes ?c "dog") 0))
  (should (= (day2--char-in-string-ntimes ?a "aardvark") 3)))


(ert-deftest day2-test--password-valid-part2-p ()
  (should (equal nil (day2--password-valid-part2-p '((rules . (1 3))
                                                   (char . ?a)
                                                   (password . "aba")))))
  (should (equal t (day2--password-valid-part2-p '((rules . (1 3))
                                                     (char . ?a)
                                                     (password . "abc")))))
  (should (equal t (day2--password-valid-part2-p '((rules . (2 3))
                                                     (char . ?b)
                                                     (password . "abcde"))))))


(ert-deftest day2-test-part2-solution ()
  (should (= 1 (let ((day2-input "1-3 c: cat"))
                 (day2-part2-solution))))
  (should (= 1 (let ((day2-input
                      "1-3 c: cat
1-3 d: dad"))
                 (day2-part2-solution))))
  (should (= 2 (let ((day2-input
                      "1-3 c: cat
1-3 d: dad
1-3 d: daa"))
                 (day2-part2-solution)))))


(provide 'test-day2)
;;; test-day2.el ends here
