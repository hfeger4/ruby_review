# 1. Demonstrate two ways to create an empty hash
#hash = Hash.new or {}
# 2. Build a hash with two symbols as keys that each have different strings as values
p hash = {:one=>"one",:two=>"two"}
# 3. Demonstrate how to pass a key into a hash
p hash[:three] = "three"
p hash
# *4. What is returned if you pass a key that doesnt exist into a hash?
nil
# 5. Demonstrate how to change the value assoc with a key in a hash
p hash[:one] = "not one anymore"
p hash
# 6. Are hashes ordered? Does it matter order of Keys and Pairs?
#yes they are ordered.
# 7. How would you return all the keys in a hash?
p hash.keys
# 8. These keys that are returned... what is their class?
#as an array
# 9. How do you see if a key is in a hash?
p hash.keys.include?(:two)
# 10. How do you return all the values from a hash?
p hash.values
# 11. How would you merge one hash into another hash?
hash2 = {:four => "four"}
new_hash = hash.merge(hash2)
p new_hash
# 12. How would you add a key value pair to an existing hash?
new_hash[:five] = "five"
p new_hash
# 13. Are these both strings "one" ... 'one'
#yes
# 14. Make a string with quotes inside the string... in a couple ways
puts 'Oh hello "there"'
puts "Oh hello \"there\""
# 15. Why would you use double or single quotes?
#to use the other in a sentence.
# 16. What are some common escape charactors and how do you escape them?
#\ and \n
# 17. How do you use flexible quotes to not have to worry about the above? i.e. this is a great way to create a string
puts %(This way)
# 18. flexible quotes with the delimiter can be used to handle newlines ... demonstrate...
p %{ oh no
  here
  we go
}
# 19. What is a here document? describe and create one in ruby

# 20. What operator will concatinate 2 strings? Does it leave the strings in place?
# + sign, and yes
# 21. Demonstrate how to concatinate to the end of a string
p "Hello" + " " + "World"
# 22. What is the shovel operator and what does it do for strings?
#concatinates strings ex.
p "hell" << "o"
# 23. What is the difference between += and << ?
#+= reassigns variable, << modifies original
# 24. What is the output? "\n".size What is "\t"?
#newline, 1 tab
# 25. can you escape charactors in a ' ' single quote?
#yes
# 26. How do you interpolate into a string?
name = "Howie"
p "Hello #{name}"
# *27. Show two ways to get the 4th - 6th letters out of "One is less than two" *ruby1.9 see below question too
sentence = "One is less than two"
p sentence[3..5]
p sentence[3,3]
# 28. tell me about how this is different in 1.8 and 1.9 ... x = string[1] how do you get what you *usually* want here in 1.8
# 29. How would you split this string? "One two three" what do you get back when split?
string = "One two three"
p string.split(" ")
# 30. Show how you would split with a reg expression

# +31. Use split and join on strings/array. Is join valid on strings? What does join do to an array? what does it do to a string?
# +32. a = "one" b = "one" .. does a == b? does a.object_id == b.object_id? What does == usually evalutate for
# 33. Is nil an object?
# 34. nil.nil? returns?
# +35. nil.to_s returns?
# 36. nil.inspect returns?
# +37. describe the is_a? function.
# 38. one = :symbol1 ... two = :symbol1 ... are one and two the same object?
# 39. Discuss method names and thier relationship to symbols
# 40. Discuss Constants and their relationshop to symbols
# 41. is :symb == :"symb"? or :name = :"name"
# +42. Ruby Symbols can never be garbage collected? is this true in 1.9?
# 43. How can you make a string into a symbol?
# 44. build a symbol that has spaces in it.
# 45. build a symbol with interpoation
# 46. What happens when you pass in a symbol to interpolated string?
# 47. What is the class of a Regualar Expression?
# *48. Show two ways how you can match a string against a reg expression.. show...
# *49. What is returned when you get a match? no match?
# 50. What do the following do in Regexp?
# ?
# +
# *
# |
# * []
# \d (say "backslash d")
# * \s (say "backslash s")
# * \w backslash w
# .
# * \A backslash capital A
# * \Z backslash captial Z vs \z
# * ^
# * $
# 51. What is greedy matching?
# 52. If more than one match what gets returned?
# 53. What is this called /? ... what is this called \?
# 54. Demonstrate a range match in Regexp
# *55. Give an example of negating a character class
# 56. How do you get the negative of the characer classes?
# 57. How would you return a group of results in an array?
# 58. How can you take a string and return an array with all the words in it?
# +59. what does sub method do on a string?
# 60. gsub?
# 61. Talk about global methods
# 62. What kind of Runtime Error is called when you call a method with wrong number of arguments?
# 63. Demonstrate how to define a method with default argument values
# 64. Demonstrate how to define a method that takes a variable amount of arguments
# +65. if nothing is passed into a method with a variable arg, what is the value of that arg in the method?
# 66. How to you specify a return value in a method? what if you do not specify a return value?
# 67. Show two ways to call a method defined in the same class as the method you are in now.
# 68. define a private method in a class
# 69. talk about if you can call a private method from within another method of that class. How can you not call it?
# 70. How do you declare a top level constant? How can you reference it?
# 71. What about declaring constants in a class and referenceing them?
# +72. Do Nested classes inheret constant values?
# +73. Do subclasses inheret constants from parent classes?
# 74. If in nested class ... and ...Constant declared in both the parent class and in the inherited class which would win?
# 75. Describe static(lexical) scoping and dynamic scoping.
# 76. What kind of statements return a value in Ruby?
# 77. Write an if then else in Ruby
# 78. Write an if then else in ruby that assigns a value to a variable. What if the result of a if then statement does not assign a value? What is returned?
# +79. Assign a value with a condition operator
# 80. assign a value with a statement modifier
# 81. write an unless statement
# 82. write a while statement
# 83. write a break statement in a loop, does it stop the whole loop?
# 84. write a next statement
# 85. write a for statement
# 85b. All of the above. do these change the current scope? do they pull in local variables? if you change these local vars do they change afger the while/unles/for stuff
# +86. What are the things that evaluate to false when put into a conditon statement?
# 87. What does require do? demonstrate its call
# +88. What does the Class method ancestors do when called?
# 89. Talk about the exception class tree.
# 90. Write a rescue clause. Does a rescue have to be in a begin / end clause?
# 91. What does method .. fail ... do?
# 92. If an error is a RuntimeError is it also a StandardError?
# 93. What is a synonym for fail?
# 94. How could you define and raise your own exception you defined?
# 95. What class is all this assert_equal and assert_raise stuff in... what is it>
# 96. Can each method use do end and { } ?
# 97. What does map do on an array? what is a synonym for it?
# *98. What can you do to find all the matching elements in an array... how do you implement?
# 99. What is another name for this above method?
