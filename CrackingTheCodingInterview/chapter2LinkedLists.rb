#Interview questions for Linked Lists

#Remove Dups:
# Write code to remove duplicates from an unsorted linked Lists

require "Set"
require_relative 'linked_list.rb'

def remove_dups(linked_list)
  hash = Hash.new
  dups = []
  linked_list.each do |node|
    if !hash.values.include?(node.val)
      hash[node.key] = node.val
    else
      dups << node.key
    end
  end
  dups.each do |val|
    linked_list.remove(val)
  end
  linked_list.to_s
end

linked_list = LinkedList.new
linked_list.append(1,1)
linked_list.append(2,2)
linked_list.append(3,3)
linked_list.append(4,1)
linked_list.append(5,2)
linked_list.append(6,2)
linked_list.append(7,2)

p remove_dups(linked_list)

# Return Kth to Last: Implement an algorithm to  find the kth to last element of a singly linked list.
