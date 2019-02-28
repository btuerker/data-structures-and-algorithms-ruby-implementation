require("./node.rb")
class Stack
  attr_accessor :top, :count
  def initialize
    @top = nil
    @count = 0
    @min_top = nil
  end

  def push element
    if @top == nil
      @top = Node.new(element)
      @min_top = Node.new(element)
      @count += 1
    else
      new_top = Node.new(element)
      new_top.prev = @top
      @top = new_top
      @count += 1
    end
    if @min_top.element > element
      new_min = Node.new(element)
      new_min.prev = @min_top
      @min_top = new_min
    end
  end
  def pop
    unless @top == nil
      unless @min_top == nil
        if @top.element == @min_top.element
          @min_top = @min_top.prev
        end
      end
      @top = @top.prev
      @count -= 1
    end
  end

  def min
    @min_top.element
  end
end

stack = Stack.new
puts "Stack top: #{stack.top} size: #{stack.count}"
stack.push(4)
puts "min: #{stack.min}"
puts "Stack top: #{stack.top.element} size: #{stack.count}"
stack.push(3)
puts "min: #{stack.min}"
puts "Stack top: #{stack.top.element} size: #{stack.count}"
stack.push(2)
puts "min: #{stack.min}"
puts "Stack top: #{stack.top.element} size: #{stack.count}"
stack.push(1)
puts "min: #{stack.min}"
puts "Stack top: #{stack.top.element} size: #{stack.count}"


while stack.top
  puts "top:#{stack.top.element}"
  puts "min: #{stack.min}"
  puts "stack size:#{stack.count}"
  stack.pop
end
