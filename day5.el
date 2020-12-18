;;; day4.el --- day 5 Advent of Code 2020

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


(defvar day5-input
  "BFFBFBBRLR
FFFFBBBLRR
FFFFBBFLRL
BFFBBFFLRR
BFFBFBBLRR
FBBBBBFLLR
BBFFBFFRRR
BFFBBBBLLL
BBFFFBFRLL
BFBFFBBRRR
FFFBBBFLLR
BFFFBFBRRR
FBFBFFFRLR
BFFBFBBRLL
FFBBBFBRRR
BBFBFBBRRR
BFFBFFFLLL
FBBFFBBRLL
FBFFBFBRRR
BFFFBFBRLL
FBFBBFBRRL
FBFFBFBRLL
FBFFFFBLRR
BFBBBFBLLR
FFBBBBBLRR
BFBBBFBRRR
FFBFBBFLLL
BFFFFFBLRL
FBBBBFBRRR
FBBBFBFLRL
BBFFFFFRLR
BBFFBFBLLL
BBFBBFFRLL
FBBFFBFRRL
BFBBFFFRLL
BFFBFFBLRL
BFBBBBFLLR
BBFFFFBLLR
FBBBFBBRLR
BFFFBFFLLR
BFBBFBFRLL
FBBBBFBLLL
FBFBBBFLLL
FFFBBBBRLR
FBBBFFBRLL
BBFFBFBLRR
FBFFBFFRRL
FBBBFFFLLR
FBBFFFFRLR
BFBFFBFLLR
FFBFBBBRRL
FBBFFBBLLL
FFBFFBBRLL
FFBBFFFRRR
FBBFBFBRRR
FBBFFFFLLR
FBFBFBFLLL
BFBFFFBLRL
FFBBBBFLRR
FFBFFFFLRR
FBFBFFBRRR
FFFBBBFRRL
FBBBFBBLRL
BFFBBBFLLL
FFFBFBFRLR
BFBFBFBLLL
FBBBFFFRRL
FBBBBFFRLR
FFBFFBFLRR
BFBFFBFLRL
BFFBFBFRRR
BFBFFBFRRR
BBFFBBFLRL
BFFFBBBLLL
FBFFBBBLRL
FFBBFBBLRL
BFBBFFBRLL
FFBFFFFRRL
FBFFBBBRLL
FBBFBFBRLL
BBFBFBBRLR
FBFFFBFLRR
BFBBFFFLRR
BFBBBFFRRR
FFBFFBBRLR
BFBBBBBRRL
FFBFFBFLRL
FFFFBFFRLL
FBFBBBBRLL
FBFBBFFLLL
FFBBFBFRLR
FBBFFBBRLR
BBFFFBBLLR
FBBFFBBRRL
FFBFFBBRRL
BFFFFBBRLL
FBFBFFBRLR
FFFBFFBRRL
BFFBFFFRLL
FFBBBFFLLL
FBFFFBFRRR
BFBFBBFRRR
BFBFFBFLLL
FBFBBFFLLR
FBBBFFBLRL
FFBFFFFLLR
FFFBBBFRLR
FBBFBFFRLL
FFBFBFBLRL
BFBFBBBLRR
BBFBBBFLLR
FFFBBFBRRL
FBFBBFBLRL
BFFFBBBLRL
FFFBFFBRRR
FBBBFFFLRL
FBBBBBBRRL
BFBBBBBRRR
FFBFBBFRLL
FFBBBBFRRR
FBBFFBFLRL
FBBBBFBLLR
BBFFBBFLLL
FBBBBFBLRR
BFFFFFFLRL
FBBFFFBRLL
BBFFFBBLRL
FFBBFFFRLL
BFBBFBBLLR
BFBFBBBRLR
BFFFFBFLRR
FFBBFFBRRR
BFFFBBBRRL
FBFFBBBLRR
FFFFBFFLRR
FFBBFBFLLR
BFBBFFBLRL
BFFBFFFLLR
FFBBBFBLLL
BBFFFBBRLR
FBBBFBBRLL
FBFFBBFRLR
BBFBFBBLLR
BFBFFFBLLL
BBFBBFFLRR
BFBBFBFRRL
FFFBBFBRRR
BFBFBBFLLL
FFFFBFBRLL
FBFFFFBRLL
FBBFFBBLLR
FBBBFFBLRR
FBFFFFFLLL
BBFBFFFLLR
BFFFBBFLRR
FBBBBFFRRL
BFFBBBBLLR
FFBBFBBLLR
BFFBBBBRRR
BFFBFFBRRL
BBFBBFBLRL
FFBFFFBRRL
BBFBBFBLLL
FFBFBFBLLR
FFBBFBFRRL
BFFFFFBRLL
FBBBBBBRLL
FBBFBBBLLR
FFFFBBFRRR
FBBBFBFLLL
FBFFBFBRRL
BBFFFFBRLL
FBBBBFBLRL
BBFFBBBRRL
BFFBFFFRLR
FFBFBFFLLL
FFBBBBFLRL
BFFBBBFRRR
BFFBFFBLLL
FFBFFBBLRL
FBFFBBFRLL
FBFBBBFRRR
FBFFBFFLLR
BBFFBBFRRL
BFBFFBFRLR
FBBBFFBRRR
FFFBBBFRRR
BFFBBFBLRL
BBFFFBFLRL
FBBFFBBLRL
FBFBBFFRLR
BFFBBBFLRR
BBFFFFBLLL
BBFBBFBLLR
FFBBBBBRRR
FBFBFFFLRR
FBFBFFFLLR
FFBFFFBLLR
FFBFFBFRLR
BFFBFBBRRR
BBFFFBBLRR
BFBFBFFRLR
FFBBBBFLLR
FFBBFFBLRR
BBFBBFFRLR
BBFFFBFLLR
BBFFBBBLRL
BFFBBFBRRL
FFFBFBBLLR
BBFFBFFRLR
BFFFFBBLLR
FBBFBFFLLR
FFFFBFBRLR
FBBFFFFLLL
BFBFBBFRLR
BFFBFFBRLR
FFFBFFFLLR
FFBBBBFRLR
FBBBFBBLLL
FFBFBFBRRR
FBFFFBBLRR
BFBBFFFLRL
FBFFBFBRLR
BFBFFBFLRR
BBFFFBFLLL
FFBFFBBLRR
BFBFFFFRRR
BFFFBBBRLL
BBFBBFBLRR
FFFFBFBRRL
BFFBBFFRLL
FBFFBBBRRL
BBFFFFFLRL
BFFBBBFRLR
BFFFBFFRRL
BFBFFFBRLR
FFFBFBFLLL
BFBFFBBLLL
FBFBBBFRLR
FBFFBBFLLL
BFBFBBBLRL
FFBFBFBLRR
BFBBBBBLLL
BFFBBBBRRL
FFFFBBBRLR
BFBFBBFLLR
FBBBBBFRRR
FBBFBFFRLR
BBFBBFBRRL
FFBFBBBLRL
BFBFBFBLRL
FBFBBBFLRL
FBFBBBBLLL
FBFBBBBRRR
FBBFBFBLLR
FBFBFBBRLR
FFBFFFBLRR
BFFBBFBRLL
BFFBFBBLLL
FBFBFFBLRL
BFFFFFFRLR
BBFFFFFRLL
FFBFBFBRRL
FBBFFBFRRR
BFFFFBBLRL
FBBFBBFLRL
FBBFBBFRLL
BBFBFBBLRR
FBFBFBBLRL
BFBBBFFRLL
FBBBBBBLLL
FBBBBBBLRR
BBFFBFBRRL
FBFBFBFRRR
FBBFBFFRRR
BBFBBFFRRR
FFBFBBFLRL
FFBFBBBRRR
BFFFFFFLRR
BFBFFBBLRR
BFBFBFBRLL
FBFBBBBLLR
BFFFFBBLLL
FBBFFFBLLR
BFBFBFBRLR
BBFFFFBLRL
BFBFBBBLLR
FFFBBBBRRL
FBFFFBFRLL
FBBFBBBLRL
BFBFFBBRLR
FBBFFFBLRR
FBBBBBFRLL
BBFBFFBLRL
BFFFBFFRLL
FBFBFFBLLR
BFFFFFBRRR
FBBFBBBRRL
FFFBBFFRRR
BFBBFBFLLL
BFFBBFBRLR
FFBBBBBLLL
FBFFBBBRLR
FFFBFFBRLR
BFBFFFFLRR
BFFFBFFLRR
BFFFFBBRLR
FBFBBBFLLR
BFFBFBBRRL
FBBFBBBRLL
FBBFBBFRLR
FFBFBFFLRR
FFFBFFFLLL
BFBFBFFLLL
FFFBFBFRRR
BFFBFFFLRL
FFBFBFBLLL
BFFFBFFLRL
BFBBBFFLRL
FFFFBFBLLL
FBBBBFFLLR
FBFBBFBRRR
FFFBBBBLRR
BBFBBFFLRL
FBFFBFFRLR
FFFBFBBLRL
BBFBFBFLLR
FFBFBFFRRL
BFFFFBFRLL
FFBFBFFLRL
FBBBBFBRLR
FBFBFFFRRR
BFBBBBFRRL
BBFFFFBLRR
FFFFBFBRRR
FFFBFFFRRR
BFBBBFFLLR
BBFBFBFRLR
FFFBFBBLLL
FFBFBBBRLR
BBFFBFBLRL
FFBFFFBLLL
FBFFFFFLRR
FBBFBBBRLR
FBFFFBBLLR
FFBFBFBRLR
FFBBFBFLRL
FBFBFBBLRR
FBBFFBFLRR
BBFFBBBLLR
FFFBFFFRRL
FFBFFFFRLL
BFBFBFFRRL
FBFBBBFLRR
FFBBFBBRRL
BFBBBFBLRL
FFFFBFFRLR
FFFBBBBLLR
FBBBFFFLLL
BFFBFFFRRR
FFFFBBBLRL
BFFFBBFLLR
FBFBFFFLRL
BFFFFBFLRL
FBFFBBBLLL
FFBBBFFRLL
BFBFFFBRRL
BFFFFFBLLR
FFBFBBFRRR
FBFBFBFRLR
BFBFBFFLLR
BFBBBBBLRL
FFFBBFFLRL
FBFFBFFRLL
FFFFBFFRRR
FBFFFBFLLL
BBFBFBFRLL
FBBFBFBLLL
FBFFFBBRRR
FFBBBFFRRL
FBBFBBFLRR
FBBBFFBRLR
FFFBBFFRRL
FFFBFFFRLR
FBFFBFBLLL
FFBFBFFRRR
BFFBBBBRLR
BBFFBBFLLR
BBFBFFBRLR
FBBFBBFLLL
FBBFBBFRRL
BBFBBFBRLL
BFFFFBFRRL
FBFBBFFRRR
BFFFFBFLLL
BBFFFBFLRR
FBBBFBFRLR
FFFBFFBLRR
FBBFBBFLLR
FBBFFFFLRR
BFBBBBFRRR
FBFFFFBRLR
FBBBBBFLRL
BFBFFBBLRL
BFBBBBFLRL
FBFBFBBRRR
FFFFBBBRRR
FBBFFFBRRL
FBFFBFFLRL
FFBFFFBRRR
BFFBBFFLLR
FBBBBBFRRL
FBBBFBBRRL
FFFBFBBRLL
BBFFBFBRRR
FBFBFBFLRL
FBBFFBFLLR
FFBFFFFRRR
BFFBBFFLLL
BFBBBFFLRR
FFBFBBFRLR
BBFFBFFLLL
BBFBFBFRRR
BFFBFFBRRR
BBFFBBBRLR
BFBFBBBRLL
BBFBFFFRLR
FFFFBBBLLR
FBBFBFBRLR
FFBBFBBLRR
FBFFFBBLRL
BBFFBFBRLL
BFFBFFFRRL
FFBBBBBRRL
FBFFFFFRLR
FFBFFFBRLR
FFFBFBBRRR
BFFBFBBLLR
FFFBBFFRLL
BBFFBFFLRL
FFFBBFFLLR
BFFFBFBLRR
FBBFBFBLRL
BFBBFFFRRR
BFBBBFBLRR
FFBBBFBRRL
FFBBBBFRRL
FFBFFFBLRL
BFBFBBFLRL
BFFBBFFRLR
FFBBBFFLRL
BFBFFFBLRR
FFFBBFBLRL
FFFBFFBLLL
BFBFBFBLRR
FBFBBFBRLR
BBFFBBBRRR
FFFBFBBRLR
BFFBBFFRRL
BFBBBBBRLL
BBFBFFFLRL
FFFFBFBLRL
BFBBFBFLLR
FBFBFFFRLL
BFBBFBFLRR
FBFBFBFLRR
BBFFFBFRRL
FFFFBFFRRL
FBFBFFBLRR
BFBFBFFLRR
FFFBBBBLLL
BBFBBFBRRR
BFFBBBFLRL
BBFFBFBLLR
BFBBFBBLLL
FFFBFBFRRL
FBBBFBBRRR
FFFBBFFLLL
BFBBBFBLLL
FBFFBFBLRL
BBFFFFBRRL
BBFFBFFLRR
FBFFFFBRRL
FBBFFBFRLR
FBFBBBBLRR
BBFFBBBLLL
BBFFFFFLLR
FBFFBBFRRR
FBBFFBFLLL
FBFFBFBLLR
BBFFFFBRRR
FBFFFBFRLR
BFBFBFBRRR
BFBBBFFLLL
FBBFFBBRRR
FFBBFBBRLL
FFBBFBBRRR
BBFBFFFLLL
FBFFBBFRRL
BFFFBFBLLR
FBFBBBFRRL
FBFBFBBRRL
FBFFBBBRRR
BBFBFBFLLL
FFBBFFFRLR
FBBFFFBLLL
FFBFFBBRRR
BFFFBBFLLL
FBFBFBBLLL
FBBFFFFRRL
FFBBFBFRLL
FBBBBBFRLR
BFBBFBBLRL
BFFFFBFRLR
BFFFFFFRRR
FBFBBFFLRL
FFBBFFBLRL
FBBFFFBLRL
FBBBBFFRLL
BBFBFFFRLL
FBFFFFFRLL
FFBFFBBLLL
FBFFFFBLRL
BFBFBBBLLL
BBFBBFBRLR
BBFFFBFRRR
FBBFBFBRRL
BFFBFFFLRR
BFBBFFBRRR
BFBBBFBRLL
BFBBBFFRRL
FBFBFBFLLR
FFBFBFBRLL
FFBBBFFLLR
BFBFBBBRRR
BBFFBFBRLR
FFBBBFBRLL
FFFBBFFLRR
BFBFFFBLLR
FFBFBBFRRL
BBFFBBFRLR
BBFBFBBLLL
FBFBBFBLRR
BBFBFBFLRL
FBBFFFBRRR
FBFBBFFRRL
FBBBFBFRRR
BFFFFFFRRL
BBFFFFFRRR
BFBBBFBRLR
BBFFFBBRRR
FBFFFFFRRR
BBFFFFFLRR
FFFBFBBRRL
FFBBBFBRLR
FFFBFFBLRL
FFFBBBBRLL
FBFBBBBLRL
BFBBBBBRLR
FBFBFFBRRL
BFBBFFBLLR
BFFFFFBLLL
BFBBBBFLRR
FFBFBBBLLR
BBFBBFFLLR
BFBFFBFRLL
FBBBBFBRRL
FBFFFBFLRL
FFBBFFBLLR
BFFBFFBLLR
FFBBBFBLRL
FBBBBFFLRR
BFFBFBFLRL
BFFBFFBLRR
FFBFBBBLLL
FBFBFFBRLL
FBBBFFFRRR
FBBBBBBLRL
FFBFFBFLLL
BBFFBFFRRL
FFFBBBFLRL
BFBBFBBRLR
FFFBFBFLRR
FBBBFBFRLL
BFBBFFFLLR
FBFBFFFLLL
BFFBBBFLLR
BBFBFFBRRL
FFBBBBBLLR
FFFBBBFLRR
BFBFBBBRRL
BFFFFFBRRL
FBFFBBBLLR
BBFBBBFLRR
BFFBBBBLRR
BBFBFFFLRR
FBBBFBFLLR
BBFFBFFRLL
FFBBFFFLRL
BBFBFFBLRR
BFFBBFBLLR
BFBBBBBLLR
BFFFBBFRLL
FBFBBBBRRL
FFBFBFFLLR
BFFFBFBLLL
FFFBBBFRLL
FBFFBBFLLR
FFFBBFBRLL
BFBFFFBRLL
BFFFBFFLLL
BBFFFFBRLR
FBBFFBBLRR
BBFFBBBRLL
BFBFFFFRLL
FBBBBBBRLR
FFFBFFBLLR
FFFBBBBRRR
FFFBBBBLRL
FBBBFFBLLR
BFBFBFBRRL
FFFFBBFRLR
FFBFFBFLLR
FFFFBBBRRL
FBBFFFFRLL
BFFBBBFRRL
FFFFBBFRRL
BFBFFBBRLL
FBFFFFFLRL
FFFBBFBLRR
FBFFFBFRRL
BFBFFBBLLR
FFFFBBFLLL
FBFFFBBRRL
BFFBBBFRLL
BFFFBFBRLR
BBFBFBBRLL
FBFBFBBRLL
BFBFFFBRRR
BFFFBBBLRR
FFBFBFFRLL
BFBBFBFRRR
BBFBBFFRRL
BBFFFBBLLL
FBFBFFBLLL
FBFFFFBLLR
FBFBBFFRLL
BBFBBBFLLL
FFBFBBFLRR
BFFBFBFLLR
BFFBBBBLRL
FFBFBBBLRR
FBBBFFFRLL
FFBFFFFLLL
FBFFFFBLLL
FBBBBBBRRR
BFBFFBBRRL
FFBBFFFLLL
FFBBBFBLRR
FFBBBBBLRL
BBFFBBFRLL
FFBBFBFLLL
BFFFFFFLLL
BFBBFBFRLR
BBFFFFFRRL
FFBBFFFRRL
FFFFBFBLRR
BFFFBBBLLR
FBFFBFFRRR
BFBFFFFLLL
FBBFBFFLRR
FFBBBFFRRR
FBBBFFFRLR
FFFFBBFLRR
FBFBFBBLLR
BFFFFFBRLR
BFFBFBFRLR
FBFFBFBLRR
FBFFFBFLLR
FBFFBBFLRR
FFBBFBBRLR
BFFFBFBRRL
BFBBFBBRLL
BBFFFFFLLL
FFBBBBBRLR
BBFBFFBLLL
BBFFFBBRLL
BBFBFFBRLL
BFFBFBFRRL
FFBFFBFRRL
BFBBFFBRRL
BFFFFFFRLL
FFBBBBFRLL
FFFBFBFLRL
FBBBBFFLLL
BBFBBFFLLL
BFFFFBBRRL
BFFFBFBLRL
FFFBFBBLRR
BFFFBFFRRR
FFBBBFFRLR
BFBFBBFRRL
BFFBBFFRRR
BFFBBFFLRL
FBBBBFBRLL
FFFFBBFLLR
BFBFFFFRLR
BBFFBFFLLR
BBFBFFBLLR
FFFBBFBLLL
BFBFBFFRRR
FBBFBFFLRL
BFFBFBFRLL
FFBBFFBLLL
FBBBBFFLRL
FFBBFFFLLR
FFFBBFBLLR
BFBBFFFLLL
BFFBFBFLLL
BFFBBFBLRR
BFFBFBFLRR
FBBFFFFRRR
BFBBFFBRLR
BFFFBBFRRR
BFBBBFBRRL
FFBBFBBLLL
FBBBFBBLLR
BBFBFBBRRL
FFBFFBFRLL
FFFFBBFRLL
BBFFBBFLRR
FBFBFBFRRL
FBBBFBBLRR
FBFFBFFLRR
FFFBFBFLLR
FBBFBFFRRL
FBFFFBBRLL
FFBFFBBLLR
FFBFBFFRLR
FFBFBBBRLL
FFFBFFFLRL
FFFBBFFRLR
FBFBBFBRLL
BFFFBBFLRL
BFBBFBBRRR
FBBFBBFRRR
FFBBFBFRRR
BFFBFBBLRL
FFFFBBBLLL
BFFFFFBLRR
FBBFBBBLRR
FBBBBBFLLL
FFBFFBFRRR
BBFFBBFRRR
FFBFBBFLLR
FFBBBFFLRR
BFFFBBFRRL
BFBFBFFLRL
BFBBFBFLRL
FFBBFBFLRR
FFFBBFBRLR
FBFBBBBRLR
BFFFBBFRLR
FFFBFFFLRR
BFBBFFFRRL
BFBBBBBLRR
FBFFFFBRRR
FBBFBBBLLL
FFFFBBBRLL
BBFFFBBRRL
BBFBFFFRRR
FFBFFFFRLR
FFBBFFBRLL
FBFFFBBLLL
BBFBFBFLRR
FBBBFBFLRR
BFBFBFFRLL
BBFBBBFLRL
FBFFFFFLLR
BFBFBFBLLR
BBFBBBFRLR
BFBBBFFRLR
FFBBFFFLRR
FBFFFBBRLR
FFBFFFBRLL
BFBBFBBRRL
FFBBFFBRLR
BFBBFFBLLL
FFBBBBFLLL
BBFBFFFRRL
FBFBBBFRLL
FBFBBFFLRR
FBBFBFFLLL
BFBFFBFRRL
FBFBFFFRRL
BFBFBBFRLL
BFFFBFFRLR
FBFBFBFRLL
BFBBFBBLRR
FBBFBFBLRR
BFFBFFBRLL
FFFBFFFRLL
FFBFFFFLRL
FBBBFFFLRR
FFFBFFBRLL
BFFFBBBRLR
FBFBBFBLLR
BFBBBBFRLL
BBFFBBBLRR
FBFFFFFRRL
BFBFFFFRRL
FBBBBBBLLR
FBBFFFBRLR
FBBBFFBLLL
BBFBBBFRLL
BFFBBFBLLL
BFFFFFFLLR
FBBFBBBRRR
BFFFFBBLRR
BBFFFBFRLR
FFFBBBFLLL
BFFBBBBRLL
BFBBBBFLLL
BFBFBBFLRR
BFBFFFFLLR
BBFBFBFRRL
FFBBFFBRRL
BFBBBBFRLR
FBBBFFBRRL
BBFBFBBLRL
BFBBFFBLRR
FBBFFFFLRL
FBBBBFFRRR
FFBBBFBLLR
FBBFFBFRLL
FBFBBFBLLL
FFFFBFBLLR
FBBBFBFRRL
FBFFBBFLRL
BFBBFFFRLR
BFFFFBBRRR
FFBBBBBRLL
BFFFBBBRRR
FBBBBBFLRR
BFFFFBFRRR
BFBFFFFLRL
FFFBFBFRLL
BFFFFBFLLR
BBFBFFBRRR
FBFFBFFLLL")


(defvar day5-range-of-rows
  '(0 . 127))


(defvar day5-range-of-columns
  '(0 . 7))


(defun day5-part1-solution nil
  "Answer ."
  (interactive)
  (let ((seat-ids (list)))
    (dolist (boarding-pass (day5--boarding-passes day5-input) seat-ids)
      (push seat-ids (day5--seat-id boarding-pass))))) ; TODO splat arguments


(defun day5--boarding-passes (boarding-passes-string)
  "Parse BOARDING-PASSES-STRING for boarding passes."
  (mapcar 'string-to-list (split-string boarding-passes-string)))


(defun day5--seat-row-column (boarding-pass row-range column-range)
  "Get row and column for BOARDING-PASS.

ROW-RANGE and COLUMN-RANGE are the range of possible rows and columns."
  (cond ((null boarding-pass) ; Return
         '((car row-range) (car column-range)))
        ((member (car boarding-pass) '("FB")) ; Row instruction
         (day5--seat-row-column (cdr boarding-pass) row-range column-range))
        ((member (car boarding-pass) '("LR")) ; Column instruction
         (day5--seat-row-column (cdr boarding-pass) row-range column-range))))


(defun day5--halve-range (range side)
  "Halve RANGE.

SIDE must be 'low or 'high."
  (cond ((equal 'low side)
         `(,(nth 0 range)
           ,(floor (day5--range-midpoint range))))
        ((equal 'high side)
         `(,(ceiling (day5--range-midpoint range))
           ,(nth 1 range)))))


(defun day5--range-midpoint (range)
  "Calculate midpoint of RANGE."
  (+ (nth 0 range) (/ (- (nth 1 range) (nth 0 range)) 2.0)))


(defun day5--seat-id (row column)
  "Get seat-id from ROW and COLUMN."
  (+ (* row 8) column))


(provide 'day5)
;;; day5.el ends here
