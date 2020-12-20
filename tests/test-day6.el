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

(ert-deftest test-day6-part2-solution nil
  (let ((day6-input "abc"))
    (should (equal 3 (day6-part2-solution))))
  (let ((day6-input "a
b
c"))
    (should (equal 0 (day6-part2-solution))))
  (let ((day6-input "ab
ac"))
    (should (equal 1 (day6-part2-solution))))
  (let ((day6-input "a
a
a
a"))
    (should (equal 1 (day6-part2-solution))))
  (let ((day6-input "b"))
    (should (equal 1 (day6-part2-solution))))
  (let ((day6-input "abc

a
b
c

ab
ac

a
a
a
a

b"))
    (should (equal 6 (day6-part2-solution))))
  (let ((day6-input "otm
bvtmo
rtosmuxc"))
    (should (equal 3 (day6-part2-solution))))
  (let ((day6-input "n
n
a"))
    (should (equal 0 (day6-part2-solution))))
  (should (equal 3585 (day6-part2-solution))))


(ert-deftest test-day6--part1-all-group-answers nil
  (let ((answer-string "abc

xyz
qwe"))
    (should (equal '((?a ?b ?c) (?x ?y ?z ?q ?w ?e)) (day6--part1-all-group-answers answer-string)))))


(ert-deftest test-day6--group-strings nil
  (let ((answer-string "abc

xyz
qwe"))
    (should (equal '("abc" "xyz\nqwe") (day6--group-strings answer-string)))))


(ert-deftest test-day6--unique-group-answers nil
  (should (equal '(?A ?B) (day6--unique-group-answers '(?A ?B ?A)))))


(ert-deftest test-day6--part2-all-group-answers nil
  (let ((answer-string "abc

xyz
qwe"))
    (should (equal '(((?a ?b ?c)) ((?x ?y ?z) (?q ?w ?e))) (day6--part2-all-group-answers answer-string)))))


(ert-deftest test-day6--group-members-answers nil
  (let ((group-strings '("abc" "xyz\nqwe")))
    (should (equal '(("abc") ("xyz" "qwe")) (day6--group-members-answers group-strings)))))


(ert-deftest test-day6--nintersecting-member-answers nil
  (should (equal 3 (day6--nintersecting-member-answers '(((?a ?b ?c)) ((?x ?y ?z) (?q ?w ?e))))))
  (should (equal 5 (day6--nintersecting-member-answers '(((?a ?b ?c)) ((?a ?b ?c) (?a ?b ?d))))))
  (should (equal 1 (day6--nintersecting-member-answers '(((?a) (?a) (?a)))))))


(ert-deftest test-day6--member-answers-intersection nil
  (should (equal '(?a ?b ?c) (day6--member-answers-intersection '((?a ?b ?c)))))
  (should (equal '(?a ?b) (day6--member-answers-intersection '((?a ?b ?c) (?a ?b ?d)))))
  (should (equal '(?a) (day6--member-answers-intersection '((?a) (?a) (?a)))))
  (should (equal '() (day6--member-answers-intersection '((?n) (?a)))))
  (should (equal '() (day6--member-answers-intersection '((?n) (?n) (?a)))))
  (should (equal '() (day6--member-answers-intersection '((?a) (?n) (?n)))))
  (should (equal '() (day6--member-answers-intersection '((?n) (?a) (?n))))))


(provide 'test-day6)
;;; test-day6.el ends here
