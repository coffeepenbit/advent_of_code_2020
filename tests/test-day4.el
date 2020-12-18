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
(unload-feature 'day4)
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
pid:656793259"
                     "byr:2002 iyr:2016
eyr:2025 ecl:amb pid:123456789 hcl:#033b48
hgt:181cm cid:166")))
    (should (equal 1 (day4--nvalid-passports passports)))))


(ert-deftest test-day4--passport-valid-p nil
  (let ((passport "hgt:66cm
pid:152cm
hcl:cfb18a eyr:1947
byr:2020 ecl:zzz iyr:2029"))
    (should (equal nil (day4--passport-valid-p passport))))
  (let ((passport "byr:2002 iyr:2016
eyr:2025 ecl:amb pid:123456789 hcl:#033b48
hgt:181cm cid:166"))
    (should (equal t (day4--passport-valid-p passport))))
  (let ((passport "byr:2024 iyr:2016 hgt:181 cid:166"))
    (should (equal nil (day4--passport-valid-p passport)))))


(ert-deftest test-day4--passport-field-valid-p nil
  (let ((passport "byr:2024 iyr:2016 hgt:181 cid:166"))
    (let ((field-and-validator '(non-existant-field . valid-height-p)))
      (should (equal nil (day4--passport-field-valid-p field-and-validator passport))))
    (let ((field-and-validator '(iyr . valid-issue-year-p)))
      (should (equal t (day4--passport-field-valid-p field-and-validator passport)))))
  (let ((passport "byr:2024 iyr:2050 hgt:181 cid:166"))
    (let ((field-and-validator '(iyr . valid-issue-year-p)))
      (should (equal nil (day4--passport-field-valid-p field-and-validator passport))))))


(ert-deftest test-day4--passport-field-name-value-pair nil
  (let ((passport "byr:2024 iyr:2016 hgt:181 cid:166 hcl:#033b48"))
    (should (equal '(hgt . "181") (day4--passport-field-name-value-pair "hgt" passport)))
    (should (equal '(hcl . "#033b48") (day4--passport-field-name-value-pair "hcl" passport)))
    (should (equal nil (day4--passport-field-name-value-pair "junk" passport)))))


(ert-deftest valid-birth-year-p nil
  (should (equal nil (valid-birth-year-p "1919")))
  (should (equal t (valid-birth-year-p "1920")))
  (should (equal t (valid-birth-year-p "2002")))
  (should (equal nil (valid-birth-year-p "2003")))
  (should (equal nil (valid-birth-year-p nil))))


(ert-deftest valid-issue-year-p nil
  (should (equal nil (valid-issue-year-p "2009")))
  (should (equal t (valid-issue-year-p "2010")))
  (should (equal t (valid-issue-year-p "2020")))
  (should (equal nil (valid-issue-year-p "2021"))))


(ert-deftest valid-expiration-year-p nil
  (should (equal nil (valid-expiration-year-p "2019")))
  (should (equal t (valid-expiration-year-p "2020")))
  (should (equal t (valid-expiration-year-p "2030")))
  (should (equal nil (valid-expiration-year-p "2031"))))


(ert-deftest valid-height-p nil
  (should (equal nil (valid-height-p "149cm")))
  (should (equal t (valid-height-p "150cm")))
  (should (equal t (valid-height-p "193cm")))
  (should (equal nil (valid-height-p "194cm")))
  (should (equal nil (valid-height-p "58in")))
  (should (equal t (valid-height-p "59in")))
  (should (equal t (valid-height-p "76in")))
  (should (equal nil (valid-height-p "77in")))
  (should (equal nil (valid-height-p "76"))))


(ert-deftest valid-hair-color-p nil
  (should (equal t (valid-hair-color-p "#c0946f")))
  (should (equal nil (valid-hair-color-p "#c0946f1"))))


(ert-deftest valid-eye-color-p nil
  (should (equal t (valid-eye-color-p "amb")))
  (should (equal nil (valid-eye-color-p "amber"))))


(ert-deftest valid-passport-id-p nil
  (should (equal t (valid-passport-id-p "000000001")))
  (should (equal nil (valid-passport-id-p "0123456789"))))


(provide 'test-day4)
;;; test-day4.el ends here
