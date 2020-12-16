;;; test-day4.el --- Day 4 Advent of Code 2020

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
(load-file "../day4.el")


(ert-deftest test-day4-part1-solution nil
  (should (equal 247 (day4-part1-solution))))


(ert-deftest test-day4--get-passports nil
  (let ((passports-string "byr:2024 iyr:2016
eyr:2034 ecl:zzz pid:985592671 hcl:033b48
hgt:181 cid:166

hgt:66cm
pid:152cm
hcl:cfb18a eyr:1947
byr:2020 ecl:zzz iyr:2029

ecl:gry hcl:#888785 eyr:2023 cid:63
iyr:2019 hgt:177cm
pid:656793259")
        (passports '("byr:2024 iyr:2016
eyr:2034 ecl:zzz pid:985592671 hcl:033b48
hgt:181 cid:166"
                     "hgt:66cm
pid:152cm
hcl:cfb18a eyr:1947
byr:2020 ecl:zzz iyr:2029"
                     "ecl:gry hcl:#888785 eyr:2023 cid:63
iyr:2019 hgt:177cm
pid:656793259")))
    (should (equal passports (day4--get-passports passports-string)))))


(ert-deftest test-day4--nvalid-passports nil
  (let ((passports '("byr:2024 iyr:2016
eyr:2034 ecl:zzz pid:985592671 hcl:033b48
hgt:181 cid:166"
                     "hgt:66cm
pid:152cm
hcl:cfb18a eyr:1947
byr:2020 ecl:zzz iyr:2029"
                     "ecl:gry hcl:#888785 eyr:2023 cid:63
iyr:2019 hgt:177cm
pid:656793259")))
    (should (equal 2 (day4--nvalid-passports passports)))))


(ert-deftest test-day4--passport-valid-p nil
  (let ((passport "hgt:66cm
pid:152cm
hcl:cfb18a eyr:1947
byr:2020 ecl:zzz iyr:2029"))
    (should (equal t (day4--passport-valid-p passport))))
  (let ((passport "byr:2024 iyr:2016
eyr:2034 ecl:zzz pid:985592671 hcl:033b48
hgt:181 cid:166"))
    (should (equal t (day4--passport-valid-p passport))))
  (let ((passport "byr:2024 iyr:2016 hgt:181 cid:166"))
    (should (equal nil (day4--passport-valid-p passport)))))


(provide 'test-day4)
;;; test-day4.el ends here
