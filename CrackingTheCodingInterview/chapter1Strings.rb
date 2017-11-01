# def is_unique(str)
#   str.chars.each do |letter|
#     return false if str.count(letter) != 1
#   end
#   true
# end
require 'set'

def is_unique(str)
  set1 = Set.new
  str.chars.each do |letter|
    set1.add(letter)
  end
  set1.length == str.length
end

p is_unique("abcdee") == false
p is_unique("abcde") == true

def check_permutation(str1,str2)
  return false if str1.gsub(/[^a-zA-Z]/,"").chars.sort != str2.gsub(/[^a-zA-Z]/,"").chars.sort
  true
end

p check_permutation("aca","aac")
p check_permutation("aabeecd","beaeadc")

def urlify(str)
  str.split(" ").join("%20")
end

p urlify("Mr John Smith    ")

def palindrome_permutation(str)
  hash = Hash.new 0
  str.downcase.gsub(/[^a-z]/,"").chars.each do |letter|
    hash[letter] += 1
  end
  hash.values.select{|v| v == 1}.length <= 1
end

p palindrome_permutation("Tact Coa")

def one_away(str1, str2)
  if (str1.chars - str2.chars | str2.chars - str1.chars).length > 2
    return false
  end
  true
end

p one_away("pale", "ple") == true
p one_away("pales", "pale") == true
p one_away("pale", "bale") == true
p one_away("pale", "bae") == false

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
  arr.join("")
end

p str_compression("aabcccccaaa")

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

# def zero_matrix(matrix)
#   i = 0
#   while i < matrix.length
#     j = 0
#     while j < matrix[i].length
#       if matrix[i][j] == 0
#         matrix[i][0] = 0
#         matrix[0][j] = 0
#       end
#       j += 1
#     end
#     i += 1
#   end
#   matrix
# end
#
# zero_matrix = [[1, 0, 3],
#      [4, 5, 6],
#      [7, 8, 0]]
#
# p zero_matrix(zero_matrix)

def string_rotation(str1,str2)
  if (str1 + str1).include?(str2)
    return true
  end
  false
end

p string_rotation("waterbottle","erbottlewat")
