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
  dups.each do |key|
    linked_list.remove(key)
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

# Return Kth to Last: Implement an algorithm to  find the nth to last element of a singly linked list.

linked_list2 = LinkedList.new
linked_list2.append(1,1)
linked_list2.append(2,2)
linked_list2.append(3,3)
linked_list2.append(4,1)
linked_list2.append(5,2)
linked_list2.append(6,2)
linked_list2.append(7,2)

def kth_to_last(linked_list, k)
  #Create two pointers, with one pointer starting K elements ahead of the first.
  #Transverse list and once the K pointer hits the end the first pointer will be K elements from the last.
  p1 = linked_list.first
  p2 = linked_list[k-1]

  until p2 == linked_list.last
    p1 = p1.next
    p2 = p2.next
  end
p  p1.key.to_s
end

kth_to_last(linked_list2, 3)


# Delete Middle Node: Implement an algorithm to delete a node in the middle
# (i.e., any node but the  rst and last node, not necessarily the exact middle) of a singly linked list,
 # given only access to that node.
# EXAMPLE
# lnput:the node c from the linked lista->b->c->d->e->f
# Result: nothing is returned, but the new linked list looks likea->b->d->e- >f

def delete_middle_node(linked_list)
  p1 = linked_list.first
  p2 = linked_list.first.next

  until p2 == linked_list.last
    p1 = p1.next
    p2 = p2.next.next
  end
  linked_list.remove(p1.key)

  # p1.key.to_s
  linked_list.to_s
end

linked_list3 = LinkedList.new
linked_list3.append(1,"a")
linked_list3.append(2,"b")
linked_list3.append(3,"c")
linked_list3.append(4,"d")
linked_list3.append(5,"e")
linked_list3.append(6,"f")


p delete_middle_node(linked_list3)

# Partition: Write code to partition a linked list around a value x,
# such that all nodes less than x come before all nodes greater than or equal to x.
# If x is contained within the list, the values of x only need to be after the elements less than x (see below).
# The partition element x can appear anywhere in the "right partition";
# it does not need to appear between the left and right partitions.
# EXAMPLE
# Input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1[partition=5] Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8

def partition(linked_list, x)
  first_arr = []
  mid_arr = []
  sec_arr = []
  new_list = LinkedList.new
  linked_list.each do |node|
    if node.val < x
      first_arr << node.val
    elsif node.val == x
      mid_arr << node.val
    else
      sec_arr << node.val
    end
  end

  (first_arr + mid_arr + sec_arr).each do |val|
    new_list.append(0,val)
  end

  new_list.to_s
end

linked_list4 = LinkedList.new
linked_list4.append(1,3)
linked_list4.append(2,5)
linked_list4.append(3,8)
linked_list4.append(4,5)
linked_list4.append(5,10)
linked_list4.append(6,2)
linked_list4.append(7,1)

p partition(linked_list4, 5)
