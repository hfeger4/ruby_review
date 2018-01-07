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
