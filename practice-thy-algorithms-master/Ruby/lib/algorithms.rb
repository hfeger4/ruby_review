# Write a method that will sum the digits of a positive integer.
# If it is greater than or equal to 10, sum the digits of the resulting number.
# Keep repeating until there is only one digit in the result.
# The result is called a 'digital root'.
# Do not use string conversion within your method.
def digital_root(number)

  while number >= 10
    number = number/10 + number%10
  end
  number
end

# Write a function that takes a message and an increment amount.
# Output the same letters shifted by that amount in the alphabet.
# Assume lowercase and no punctuation.
# Preserve spaces.
def caesar_cipher(string, shift)
  alpha = ("a".."z").to_a
  changed_arr = []
  i = 0
  while i < string.length
    if alpha.include?(string[i])
      letter = string[i]
      curr_index = alpha.index(letter)
      new_index = (curr_index + shift) % 26
      new_letter = alpha[new_index]
      changed_arr << new_letter
    else
      changed_arr << string[i]
    end
    i += 1
  end
  changed_arr.join("")
end

# Write a function that takes two strings.
# Return the longest common substring.
def common_substrings(string_one, string_two)

end

# Write a function that takes an array of integers and returns their sum.
# Use recursion.
def sum_rec(numbers)
  return 0 if numbers.length == 0
  numbers[-1] + sum_rec(numbers[0..-2])
end

# Write a function that takes n, the length of the sequence.
# Return the first n elements from the fibonnacci sequence as an array.
def fibs(n)
  return [] if n == 0
  return [0] if n == 1
  return [0,1] if n == 2

  prev = fibs(n-1)
  prev << prev[-1] + prev[-2]
  prev
end

# Write a function that takes a string.
# Return true if the string is a palindrome, otherwise return false.
# It should take less time and memory than reversing the string.
def is_palindrome?(string)
  string == string.reverse
end

# Write a method that takes a string as input.
# It should return true if the input is a valid IPv4 address.
# Valid IPs are anything between '0.0.0.0' and '255.255.255.255'.
def valid_ip?(string)
  return false if string.split(".").length != 4
  string.split(".").each do |number|
    if number.to_i > 255 || number.to_i < 0
      return false
    end
  end
  true
end

# Implement the Folding Cipher.
# It folds the alphabet in half and uses the adjacent letter.
# a -> z, b -> y, c -> x, m -> n, etc...
def folding_cipher(string)
  alpha_reverse = ("a".."z").to_a.reverse
  alpha = ("a".."z").to_a
  new_arr = []
  i = 0
  while i < string.length
    if alpha_reverse.include?(string[i])
      index = alpha.index(string[i])
      new_arr << alpha_reverse[index]
    else
      new_arr << string[i]
    end
    i += 1
  end
  new_arr.join("")
end

# Write a method that finds all the unique substrings for a word.
def uniq_subs(string)
  i = 0
  new_arr = []
  while i < string.length
    j = 0
    while j < string.length
      new_arr << string[i..j]
      j += 1
    end
    i += 1
  end
  new_arr.uniq - [""]
end

# Given an array of integers find the largest contiguous subsum.
# You can solve this trivially in O(n**2) time by considering all subarrays.
# Try to solve it in O(n) time with O(1) memory.
def lcs(array)
  max = 0
  current = 0
  array.each do |num|
    current += num
    max = current if max <= current
    current = 0 if current < 0
  end
  max
end

# Write a function that takes a year as a four digit integer.
# Returns an array of the 10 closest subsequent silly years.
# A silly year's first two digits plus the last two digits equal the middle two.
def silly_years(year)
  arr = []
  until arr.length == 10
    year += 1
    arr << year if silly_check(year)
  end
  arr
end

def silly_check(year)
  year = year.to_s.split("").map{|y| y.to_i}
  if year[0..1].join("").to_i + year[2..3].join("").to_i == year[1..2].join("").to_i
    return true
  end
  false
end

# Take an array of integers, and integer k.
# Return all pairs that sum to k exactly.
# List the pairs in [min, max] order.
# Time complexity: O(n).
# Return a set.
def pair_sum(array, k)
  seen = Set.new
  ans = Set.new
  array.each do |num|
    ans << [num,k-num] if seen.include?(k-num)
    seen.add(int)
  end
  ans
end

# Take a matrix of integers and coordinates.
# The coordinates represent a rectangular region within the matrix
# Find the sum of numbers falling inside the rectangle.
# Time complexity: O(number of rows * number of columns).
def matrix_region_sum(matrix, top_left_coords, bottom_right_coords)

end

# Implement Merge Sort
# Hint: This typically involves a helper function.
def merge_sort(array)

end

def merge(left, right)

end

# Implement binary search.
# Return nil if the target isn't found.
def binary_search(array, target)

end

# You are given a list of numbers in an array.
# Replace all the numbers with the product of all other numbers.
# Do this in O(n) time without using division.
def productify(array)

end

# Write a function that takes an array and returns all of its subsets.
def subsets(array)

end

# Return the indices of the start/end of the longest palindrome in the string.
# You could reverse the string and compare it to the original, but that is slow.
# Instead, you should be able to solve the problem with O(1) memory.
def longest_palindrome(string)

end

# Given two arrays, find the intersection of both sets.
# It should be trivial to write an O(n**2) solution.
# Use sorting to solve in O(nlog(n)).
# Next, improve this to O(n) time (maybe use a non-array datastructure).
def fast_intersection(array_one, array_two)

end

# Write a function that takes two arrays of integers
# Returns an array with all the subsets commmon to both arrays.
# Don't generate all subsets of both arrays, which would be exponential time.
# Instead, directly generate the subsets of both.
def common_subsets(array_one, array_two)

end

# You are given an array and index.
# Find if it's possible to reach 0 by starting at the index.
# You can only move left or right by the distance found at array[index].
def can_win?(array, index)

end

# Assume an array of length n, containing the numbers 1..n in jumbled order.
# "Sort" this array in O(n) time.
# Hint: You should be able to do this without looking at the input.
def sort1(array)

end

# Assume an array of length n with numbers in the range 1..N (N >= n).
# Sort this array in O(n + N) time.
# You may use O(N) memory.
def sort2(array, max_value)

end

# Say I give you an array of n strings, each of length k.
# Merge sort can sort this in O(knlog(n)).
# Sort the strings in O(kn).
# Hint: Do not compare any two strings.
# All strings contain only lowercase letters without whitespace or punctuation.
def sort3(array, length)

end

# Given an array, write a function that will return a random index of the array.
# The chance of returning a given index will vary with the value of the element.
# Probability of i should be the ith element divided by the sum of all elements.
def weighted_random_index(array)

end

# Given an array, move all zeros to the end.
# The order of non-zero elements does not matter.
# Try to accomplish this in O(n) time and O(1) space.
def move_zeros(array)

end

# Implement the 'look and say' function.
#'Look and say' takes an input array and outputs an array.
# The output describes the count of the elements in the input.

def look_and_say(array)

end

# I give you a scrambled list of n unique integers between 0 and n.
# Tell me what number is missing?
# How could you solve the problem in O(n), and also O(1) space?
def sum_upon_sums(array)

end

# Implement a stack with a max method that returns the maximum value.
# It should run in O(1) time.
class MaxStack

end

# Implement a queue using stacks.
# That is, write enqueue and dequeue using only push and pop operations.
# In terms of performance, enqueue should be O(1).
# Dequeue may be worst-case O(n).
# In terms of ammortized time, dequeue should be O(1).
# Prove that your solution accomplishes this.
class StackQueue

end

# Take an array, and a window size w.
# Find the maximum max - min within a range of w elements.
# First solve MaxStack.
# Write a MinMaxStack to track both the min and the max in a stack.
# Next, solve StackQueue.
# Write a MinMaxStackQueue which tracks both the min and max.
# Last, use MinMaxStackQueue to solve the problem.
class MinMaxStack

end

class MinMaxStackQueue

end

def windowed_max_range(array, w)

end

# Suppose a hash representing a directory.
# All keys are strings with names for either folders or files.
# Keys that are folders point to nested hashes.
# Keys that are files point to "true".
# Write a function that takes such a hash.
# Return an array of strings with the path to each file in the hash.
def file_list(hash)

end

# Assume an array of non-negative integers.
# A second array is made by shuffling the first and deleting a random element.
# Given these two arrays, find which element is missing in the second array.
# Do this in linear time with constant memory use.
def find_missing_number(array_one, array_two)

end

# Create a function that takes three strings.
# Return whether the third is an interleaving of the first two.
# Interleaving means it contains the same characters and preserves their order.
def is_shuffle?(string_one, string_two, string_three)

end

# Write a function that takes an integer and returns it in binary form.
def binary(integer)

end

# Write a recursive function that takes a number and returns its factorial.
def recursive_factorial(number)

end

# Write an iterative function that takes a number and returns its factorial.
def iterative_factorial(number)

end

# Write a method that takes an array and returns all its permutations.
def permutations(array)

end
