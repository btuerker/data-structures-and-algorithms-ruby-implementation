class Node
  attr_reader :next, :element
  attr_writer :next, :element
  def initialize element = nil
    @element = element
    @next = nil
  end
end
