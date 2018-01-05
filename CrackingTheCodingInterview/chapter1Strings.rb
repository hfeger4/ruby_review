# def is_unique(str)
#   str.chars.each do |letter|
#     return false if str.count(letter) != 1
#   end
#   true
# end
require 'set'

# Is Unique: Implement an algorithm to determine if a string has all unique characters.
# What if you cannot use additional data structures?

def is_unique(str)
  set1 = Set.new
  str.chars.each do |letter|
    set1.add(letter)
  end
  set1.length == str.length
end


def uniq_hash(str)
  uniq = Hash.new 0

end

p is_unique("abcdee") == false
p is_unique("abcde") == true

# def check_permutation(str1,str2)
#   return false if str1.gsub(/[^a-zA-Z]/,"").chars.sort != str2.gsub(/[^a-zA-Z]/,"").chars.sort
#   true
# end

# Check Permutation: Given two strings,write a method to decide if one is a permutation of the
# other.

def check_permutation(str1,str2)
  hash = Hash.new 0
  str1.chars.each do |let|
    hash[let] += 1
  end
  str2.chars.each do |let|
    hash[let] -= 1
    return false if hash[let] < 0
  end
  true
end

puts "CHECK PERMUTATION"
p check_permutation("aca","aac")
p check_permutation("aabeecd","beaeadc")


# URLi : Write a method to replace all spaces in a string with '%20
# You may assume that the string has suf cient space at the end to hold the
# additional characters,and that you are given the "true" length of the string. (Note: If implementing in Java,please use a character array so that you can perform this operation in place.)
# EXAMPLE
# Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith"


def urlify(str)
  str.split(" ").join("%20")
end

p urlify("Mr John Smith    ")

# Palindrome Permutation: Given a string, write a function to check if it is a permutation
# of a palin­ drome. A palindrome is a word or phrase that is the same  rwards and backwards.
# A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.
# EXAMPLE
# Input: Tact Coa
# Output: True (permutations: "taco cat", "atco eta", etc.)

def palindrome_permutation(str)
  hash = Hash.new 0
  str.downcase.gsub(/[^a-z]/,"").chars.each do |letter|
    hash[letter] += 1
  end
  hash.values.select{|v| v.odd?}.length >= 1
end

puts "PALINDROME PERMUTATION"
p palindrome_permutation("Tact Coa")
p palindrome_permutation("xhananahx")

# One Away: There are three types of edits that can be performed on strings: insert a character,
# remove a character, or replace a character.
# Given two strings, write a function to check if they are one edit (or zero edits) away.
# EXAMPLE
# pale, ple -> true pales, pale -> true pale, bale -> true pale, bake -> false

def one_away(str1, str2)
  # return false if (str1.length - str2.length).abs > 1
  # if (str1.chars - str2.chars | str2.chars - str1.chars).length > 2
  #   return false
  # end
  # true

  return false if (str1.length - str2.length).abs > 1

  hash = Hash.new 0

  str1.chars.each do |let|
    hash[let] += 1
  end

  str2.chars.each do |let|
    hash[let] -= 1
  end

  diff = 0

  hash.values.each do |val|
    diff += (val.to_f.abs/2.0)
  end

  return false if diff > 1.0
  true
end

puts "ONE AWAY"
p one_away("pale", "ple") == true
p one_away("pales", "pale") == true
p one_away("pale", "bale") == true
p one_away("pale", "bae") == false
p one_away('sdhg', 'ssghz') == false
p one_away('coffee', 'coffe') == true
p one_away('coffee', 'coffeee') == true
p one_away('coffee', 'coffeex') == true
p one_away('coffee', 'coffeexy') == false
p one_away('aaxnn', 'aahnn') == true
p one_away('aaxxnn', 'aahhnn') == false
p one_away('ann', 'anh') == true
p one_away('edg', 'dg') == true
p one_away('palindromieee', 'ialindrompeee') == true
p one_away('palindromieee', 'palidromiee') == false

# String Compression: Implement a method to perform basic string compression using the counts of repeated characters.
# For example, the string aabcccccaaa would become a2blc5a3.
# If the "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z).

def str_compression(str)
  arr = []
  i = 0
  while i < str.length
    count = 1
    arr << str[i]
    until str[i] != str[i+1]
      i += 1
      count += 1
    end
    arr << count
    i += 1
  end
  compressed = arr.join("")
  if compressed.length >= str.length
    return str
  end
  compressed
end

p str_compression("aabcccccaaa")

# Rotate Matrix: Given an image represented by an NxN matrix,
# where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees.
# Can you do this in place?

def rotate_matrix(matrix)
  arr = []
  matrix.length.times do |i|
    sub = []

    matrix.each do |array|
      sub << array[i]
    end

    arr << sub.reverse
  end
  arr
end

my_matrix = [[1, 2, 3],
     [4, 5, 6],
     [7, 8, 9]]

p rotate_matrix(my_matrix)

# Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0,
# its entire row and column are set to 0.
#time complexity O(n*m)
def zero_matrix(orig_matrix)
  matrix = orig_matrix.dup
  zero_rows = []
  zero_columns = []

  matrix.each_with_index do |array,i|
    array.each_with_index do |el,j|
      if el == 0
        zero_rows << i unless zero_rows.include?(i)
        zero_columns << j unless zero_columns.include?(j)
      end
    end
  end

  zero_rows.each do |i|
    matrix[i].map!{|el| el = 0}
  end

  matrix.each do |array|
    zero_columns.each do |i|
      array[i] = 0
    end
  end
  matrix

end

zero_matrix = [[1, 0, 3],
     [4, 5, 6],
     [7, 8, 0]]

p zero_matrix(zero_matrix)

# String Rotation:Assumeyou have a method isSubstring which checks if one word is a substring of another.
# Given two strings, sl and s2, write code to check if s2 is a rotation of sl using only one call to isSubstring
# (e.g.,"waterbottle" is a rotation of"erbottlewat").

def isSubstring(str1,str2)
  if str1.include?(str2)
    return true
  end
  if str2.include?(str1)
    return true
  end
  false
end

def string_rotation(str1,str2)
  str1 = str1 + str1
  isSubstring(str1,str2)
end

p string_rotation("waterbottle","erbottlewat")
