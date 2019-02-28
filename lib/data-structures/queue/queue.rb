require_relative('./node.rb')

class Queue
  attr_reader :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def enqueue element
    if self.empty?
      @head = Node.new(element)
      @tail = @head
    else
      @tail.next = Node.new(element)
      @tail = @tail.next
    end
  end

  def dequeue
    return nil if @head == nil
    result = @head.element
    if @head.next
      @head = @head.next
    else
      @head = nil
      @tail = nil
    end
    return result
  end

  def empty?
    (@head == nil)? true : false
  end

  def peek
    @head.element
  end
end






