require("./node.rb")

class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  # usage -> push element to the end add(element)
  # usage -> push element to the specific index add(index, element)
  # TO-DO
  # this may not proper single responsibility principle, refactor it
  # TO-DO
  def add(index, element = nil)
    if element == nil
      element = index
      if @head == nil
        @head = Node.new(element)
        @tail = @head
      else
        @tail.next = Node.new(element)
        @tail = @tail.next
      end
    # if element != nill set element to the given index
    else
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
        @head = Node.new(element)
        @head.next = temp
      else
        prev.next = Node.new(element)
        prev.next.next = current
      end
    end
  end

  # add reverse search support like get(-1) for last index get(-2) for second last
  def get(index)
    current = @head
    counter = 0
    (index + 1).times do
      break if index == counter
      return nil if current.next == nil
      current = current.next
      counter += 1
    end
    current.element
  end

  def remove(index)
    current = @head
    prev = @head
    return nil if current == nil
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

  def [](index)
    get(index)
  end
end
