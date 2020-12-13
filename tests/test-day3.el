;;; test-day3.el --- Day 3 Advent of Code 2020

;; Copyright (C) 2020  kga

;; Author: kga <kga@Thinkpad-OpenSUSE>
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
(load-file "../day3.el")


(ert-deftest test-day3-part1-solution nil
  (let ((day3-slope '((right . 3)
                      (down . 1))))
    (should (= 0 (let ((day3-input "....
....
...."))
                   (day3-part1-solution))))
    (should (= 1 (let ((day3-input "....
...#
...."))
                   (day3-part1-solution))))
    (should (= 2 (let ((day3-input ".......
...#...
......#"))
                   (day3-part1-solution))))
    (should (= 1 (let ((day3-input ".......
...#...
......."))
                   (day3-part1-solution))))
    (should (= 2 (let ((day3-input "..........
...#......
..........
.........#"))
                   (day3-part1-solution))))
    (should (= 2 (let ((day3-input "....
...#
....
.#.."))
                   (day3-part1-solution))))))


(ert-deftest test-day3--ntimes-down nil
  (should (equal 1 (day3--ntimes-down 2 1)))
  (should (equal 2 (day3--ntimes-down 3 1)))
  (should (equal 1 (day3--ntimes-down 3 2))))


(ert-deftest test-day3--string-to-matrix nil
  (should (equal (vector (vector "abc") (vector "def"))
                 (day3--string-to-matrix "abc\ndef")))
  (should (equal (vector (vector ".......")
                         (vector "...#...")
                         (vector "......#"))
                 (day3--string-to-matrix ".......
...#...
......#"))))


(ert-deftest test-day3--create-row nil
  (should (equal ["abc"] (day3--create-row "abc"))))


(ert-deftest test-day3--calc-nhoriz-repeat nil
  (let ((slope '((right . 3)
                 (down . 1))))
    (let ((matrix [["..."] ["..#"]]))
      (should (equal 1 (day3--calc-nhoriz-repeat matrix slope))))
    (let ((matrix [["...."] ["...#"] ["...."] ["..#."]]))
      (should (equal 2 (day3--calc-nhoriz-repeat matrix slope))))
    (let ((matrix (vector (vector ".......")
                          (vector "...#...")
                          (vector "......#"))))
      (should (equal 0 (day3--calc-nhoriz-repeat matrix slope)))))
  (let ((slope '((right . 1)
                 (down . 2))))
    (let ((matrix [["..."] ["..#"] ["..."]]))
      (should (equal 0 (day3--calc-nhoriz-repeat matrix slope))))))


(ert-deftest test-day3--matrix-width nil
  (let ((matrix (vector (vector "...") (vector "..#"))))
    (should (equal 3 (day3--matrix-width matrix))))
  (let ((matrix (vector (vector "......") (vector "..#..#"))))
    (should (equal 6 (day3--matrix-width matrix)))))


(ert-deftest test-day3--horiz-required-width nil
  (let ((matrix (vector (vector "...") (vector "..#"))))
    (let ((slope '((right . 3)
                   (down . 1))))
      (should (equal 4 (day3--horiz-required-width matrix slope))))))


(ert-deftest test-day3--horiz-repeat-matrix nil
  (let ((matrix (vector (vector "...") (vector "..#"))))
    (should (equal [["..."] ["..#"]]
                   (day3--horiz-repeat-matrix matrix 0)))
    (should (equal [["......"] ["..#..#"]]
                   (day3--horiz-repeat-matrix matrix
                                              1))))
  (let ((matrix (vector (vector ".......")
                        (vector "...#...")
                        (vector "......#"))))
    (should (equal (vector (vector ".......")
                           (vector "...#...")
                           (vector "......#"))
                   (day3--horiz-repeat-matrix matrix 0)))))


(ert-deftest test-day3--horiz-repeat-row nil
  (let ((row ["..#"]))
    (should (equal ["..#"] (day3--horiz-repeat-row row 0)))
    (should (equal ["..#..#"] (day3--horiz-repeat-row row 1)))))


(ert-deftest test-day3--get-row nil
  (let ((matrix [["..."] ["..#"]]))
    (should (equal ["..."] (day3--get-row matrix 0)))
    (should (equal ["..#"] (day3--get-row matrix 1)))))


(ert-deftest test-day3--set-row nil
  (let ((matrix [["..."] ["..#"]]))
    (should (equal [["a"] ["..#"]] (day3--set-row matrix 0 ["a"])))))
;; (should (equal ["..#"] (day3-set-row matrix 1)))))


(ert-deftest test-day3--get-next-position nil
  (let ((matrix [["......."] ["...#..."] ["......."]]))
    (should (equal ?. (let ((day3-slope '((right . 0)
                                          (down . 0))))
                        (day3--get-next-position matrix day3-slope))))
    (should (equal ?. (let ((day3-slope '((right . 1)
                                          (down . 1))))
                        (day3--get-next-position matrix day3-slope))))
    (should (equal ?# (let ((day3-slope '((right . 3)
                                          (down . 1))))
                        (day3--get-next-position matrix day3-slope))))
    (should (equal ?# (let ((day3-slope '((right . 3)
                                          (down . 1)))
                            (nth-pos 1))
                        (day3--get-next-position matrix day3-slope nth-pos))))
    (should (equal ?. (let ((day3-slope '((right . 3)
                                          (down . 1)))
                            (nth-pos 2))
                        (day3--get-next-position matrix day3-slope nth-pos)))))
  (let ((matrix [["......."] ["...#..."] ["......."]])
        (day3-slope '((right . 3)
                      (down . 1))))
    (should (equal ?# (day3--get-next-position matrix day3-slope 1)))
    (should (equal ?. (day3--get-next-position matrix day3-slope 2)))))


(provide 'test-day3)
;;; test-day3.el ends here
