# Three in One: Describe how you could use a single array to implement three stacks.
class ThreeStacks
  def initialize()
    @stack = [[],[],[]]
  end

  def add(stack,el)
    @stack[stack].push(el)
  end

  def remove(stack)
    @stack[stack].pop
  end

  def empty?(stack)
    @stack[stack].empty?
  end
end

mystack = ThreeStacks.new

mystack.add(2,2)
mystack.add(0,1)
mystack.add(1,2)
mystack.add(2,3)
mystack.add(2,4)
p mystack
mystack.remove(2)
p mystack
p mystack.empty?(2)

# Stack Min: How would you design a stack which, in addition to push and pop,
# has a function min which returns the minimum element?
# Push, pop and min should all operate in 0(1) time.

class MinStack
  def initialize
    @stack = Stack.new
    @mins = Stack.new
  end

  def push(el)
    @mins.push(el) if @mins.count == 0
    @stack.push(el)
    if el < @mins.last
      @mins.push(el)
    end
  end

  def pop(el)
    raise "stack is empty" if @store.count == 0
    lastEle = @store.pop
    @mins.pop if lastEle == @mins.last
    lastEle
  end

  def min
    @mins.last
  end
end

# For question 2
class Stack
  def initialize
    @store = []
    @count = 0
  end

  def count
    @count
  end

  def push(el)
    @store.push(el)
    @count += 1
    @count
  end

  def pop
    raise "stack is empty" if @store.count == 0
    lastElement = @store.pop
    @count -= 1
    lastElement
  end

  def last
    @store[count - 1]
  end

end

testmin = MinStack.new
testmin.push(2)
testmin.push(1)
testmin.push(5)
p testmin

[1,2,3]
[4,5,6]

# Queue via Stacks: Implement a MyQueue class which implements a queue using two stacks

class MyQueue
  def initialize
    @newStack = Stack.new
    @oldStack = Stack.new
    @count = 0
  end

  def add(el)
    @newStack.push(el)
  end
end

# Animal Shelter: An animal shelter, which holds only dogs and cats,
# operates on a strictly" rst in,  rst out" basis.
# People must adopt either the"oldest" (based on arrival time) of all animals at the shelter,
# or they can select whether they would prefer a dog or a cat
# (and will receive the oldest animal of that type).
# They cannot select which speci c animal they would like.
# Create the data structures to maintain this system and implement operations
# such as enqueue, dequeueAny, dequeueDog, and dequeueCat.
# You may use the built-in Linked list data structure.

class AnimalShelter
  def initialize()
    @cats = []
    @dogs = []
    @count = 0
  end

  def enqueue(animal)
    animal.count = @count
    @count += 1
    if animal.is_a?(Dog)
      @dogs.push(animal)
    else
      @cats.push(animal)
    end
  end

  def dequeue_cat
    @cats.pop
  end

  def dequeue_dog
    @dogs.pop
  end

  def dequeue_oldest
    @cats.last.count > @dogs.last.count ? @cats.pop : @dogs.pop
  end

end

class Animal
  attr_accessor :count
  def initialize()
    @count = count
  end
end

class Dog < Animal
end

class Cat < Animal
end

kitty = Cat.new
catty = Cat.new
bubbles = Cat.new
fido = Dog.new
doge = Dog.new
doggy = Dog.new

dogs_and_cats = AnimalShelter.new
dogs_and_cats.enqueue(kitty)
dogs_and_cats.enqueue(fido)
dogs_and_cats.enqueue(bubbles)
dogs_and_cats.enqueue(catty)
dogs_and_cats.enqueue(doge)
dogs_and_cats.enqueue(doggy)
p dogs_and_cats.dequeue_cat
p dogs_and_cats.dequeue_oldest
