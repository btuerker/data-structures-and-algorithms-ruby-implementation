require("./node.rb")

class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(element)
    if @head == nil
      @head = Node.new(element)
      @tail = @head
    else
      @tail.next = Node.new(element)
      @tail = @tail.next
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

  def [](index)
    get(index)
  end
end
