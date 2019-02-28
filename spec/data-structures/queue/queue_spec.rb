require('./lib/data-structures/queue/queue')

RSpec.describe Queue do
  describe "#enqueue" do
    it "should add an element to the queue" do
      queue = Queue.new
      expect(queue.empty?).to be true
      expect(queue.head).to eql(nil)
      queue.enqueue(1)
      expect(queue.empty?).to be false
      expect(queue.head.element).to eql(1)
    end
  end

  describe "dequeue" do
    it "should remove an element from the queue" do
      queue = Queue.new
      queue.enqueue(1)
      expect(queue.dequeue).to eql(1)
      queue.enqueue(2)
      queue.enqueue(3)
      queue.enqueue(4)
      expect(queue.dequeue).to eql(2)
      expect(queue.dequeue).to eql(3)
      expect(queue.dequeue).to eql(4)
    end
  end
end
