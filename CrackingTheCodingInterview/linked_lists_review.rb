#implement a linked list
#be able to reverse the linked list
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end

  def to_s
    current_node = self
    res = "["
    while current_node.next_node != nil
      res = res + current_node.value.to_s + ", "
      current_node = current_node.next_node
    end
    res = res + current_node.value.to_s + "]"
  end

  def reverse_list(curr)
    return curr if curr == nil || curr.next_node == nil

    next_node = curr.next_node
    new_head = reverse_list(curr.next_node)
    next_node.next_node = curr
    curr.next_node = nil
    return new_head
  end
end

#Implement a stack using a linkedList

class Stack
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(value)
    new_head = Node.new(value, head)
    @head = new_head
  end

  def pop
    @head = @head.next_node
  end
end

# head = Node.new 8, nil
# snd = Node.new 7, nil
# head.next_node = snd
# puts head


stack = Stack.new
stack.push 3
stack.push 5
stack.push 7
stack.pop
stack.push 8
print stack.head
