#Interview questions for Linked Lists

#Remove Dups:
# Write code to remove duplicates from an unsorted linked Lists

require "Set"

class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end

  def remove_next_node(current_node)
    deleted_node = current_node.next
    current_node.next = current_node.next.next
    deleted_node.next = nil
  end

  def remove_duplicates(head)
    seen = Set.new
    current_node = head
    seen << current_node.data

    until current_node.next.nil?
      if seen.include?(current_node.next.data)
        remove_next_node(current_node)
      else
        seen << current_node.next.data
        current_node = current_node.next
      end
    end
  end

end
