class Node
  attr_reader :next, :element
  attr_writer :next, :element

  def initialize element
    @element = element
    @next = nil
  end

end

class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

  def add(number, index = nil)
    if index == nil
      if @head == nil
        @head = Node.new(number)
        @tail = @head
      else
        @tail.next = Node.new(number)
        @tail = @tail.next
      end
    else
      number, index = index, number
      current = @head
      prev = @head
      counter = 0
      index.times do
        break if counter == index
        return nil if current.next == nil
        prev = current
        current = current.next
        counter += 1
      end
      if current == @head
        temp = @head
        @head = Node.new(number)
        @head.next = temp
      else
        prev.next = Node.new(number)
        prev.next.next = current
      end
    end
  end

  def get(index)
    current = @head
    counter = 0
    index.times do
      # break if found
      break if counter == index
      # not found
      return nil if current.next == nil
      current = current.next
      counter += 1
    end
    return current.element
  end

  def remove(index)
    current = @head
    prev = @head
    counter = 0
    index.times do
      break if counter == index
      return nil if current == nil || current.next == nil
      prev = current
      current = current.next
      counter += 1
    end
    if current == @head
      if current.next == nil
        @head = nil
        @tail = nil
      else
        @head = @head.next
      end
    else
      if current.next == nil
        prev.next = nil
      else
        prev.next = current.next
      end
    end
    return current
  end

  def size
    counter = 0
    current = @head
    while current != nil
      counter += 1
      current = current.next
    end
    return counter
  end

  def to_array
    array = []
    current = @head
    while current != nil
      array << current.element
      current = current.next
    end
    return array
  end

  def [](y)
    get(y)
  end
end

linked_list = LinkedList.new
print "inital list -> #{linked_list.to_array}"
puts
linked_list.add(3)
print "add(3) -> current list: #{linked_list.to_array}"
puts
puts "get(0) -> #{linked_list.get(0)}"
linked_list.add(5)
print "add(5) -> current list: #{linked_list.to_array}"
puts
linked_list.add(1,11)
print "add(1,11) -> current list: #{linked_list.to_array}"
puts
linked_list.add(2,13)
print "add(2,13) -> current list: #{linked_list.to_array}"
puts
linked_list.remove(2)
print "remove(2) -> current list: #{linked_list.to_array}"
puts
linked_list.remove(0)
print "remove(0) -> current list: #{linked_list.to_array}"
puts
linked_list.remove(1)
print "remove(1) -> current list: #{linked_list.to_array}"

puts
puts
puts

test = LinkedList.new
print "inital list -> #{test.to_array}"
puts
test.add(3)
print "add(3) -> current list: #{test.to_array}"
puts
puts "get(0) -> #{test.get(0)}"
test.add(5)
print "add(5) -> current list: #{test.to_array}"
puts
test.add(1,11)
print "add(1,11) -> current list: #{test.to_array}"
puts
test.add(7)
print "add(7) -> current list: #{test.to_array}"
puts
test.add(3,13)
print "add(3,13) -> current list: #{test.to_array}"
puts
test.add(3,14)
print "add(3,14) -> current list: #{test.to_array}"
puts
puts "get(1) -> #{test.get(1)}"
puts "get(3) -> #{test.get(3)}"
test.remove(2)
print "remove(2) -> current list: #{test.to_array}"
puts
test.remove(0)
print "remove(0) -> current list: #{test.to_array}"
puts
puts "get(3) -> #{test.get(3)}"
test.add(2,10)
print "add(2,10) -> current list: #{test.to_array}"
puts
test.add(1,9)
print "add(1,9) -> current list: #{test.to_array}"
puts
puts "get(5) -> #{test.get(5)}"
puts "get(3) -> #{test.get(3)}"
test.remove(0)
print "remove(0) -> current list: #{test.to_array}"
puts
test.remove(0)
print "remove(0) -> current list: #{test.to_array}"
puts
test.remove(0)
print "remove(0) -> current list: #{test.to_array}"
puts
test.remove(0)
print "remove(0) -> current list: #{test.to_array}"
puts
test.remove(0)
print "remove(0) -> current list: #{test.to_array}"
puts
test.add(2)
print "add(2) -> current list: #{test.to_array}"
puts
test.add(3)
print "add(3) -> current list: #{test.to_array}"
puts
test.add(1,1)
print "add(1,1) -> current list: #{test.to_array}"
puts
test.add(3,5)
print "add(3,5) -> current list: #{test.to_array}"
puts
puts "get(4) -> #{test.get(4)}"
puts "get(2) -> #{test.get(2)}"












