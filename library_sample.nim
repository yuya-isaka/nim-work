var
  chr_var: char
  str_var: string
  int_var: int
  flt_var: float
  bol_var: bool
  str_seq: seq[string]
  int_seq: seq[int]

import strutils

str_seq = "ab,bc,cd".split(",")
str_var = "hello".repeat(3)
int_var = "Helol".count('l')
str_var = str_var.replace("lo", "p")

echo str_var

echo "---------------------------------"

import unicode

str_var = reversed("123456")
echo str_var

int_var = str_var.runeLen
echo int_var

echo "---------------------------------"

import algorithm

str_seq = @["bc", "aa", "ba", "ab"]
str_seq.sort()
echo str_seq
str_seq.reverse()
echo str_seq
int_var = binarySearch(str_seq, "ba")
echo int_var

echo "---------------------------------"

import sequtils

int_var = "abracadef".count('a')
echo int_var
int_seq = repeat(5, 3)

