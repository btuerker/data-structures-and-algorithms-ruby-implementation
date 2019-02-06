require("./linked_list")

linked_list1 = LinkedList.new

puts "linked_list initialization test-cases"
puts "linked_list1 head: #{linked_list1.head}"
puts "linked_list1 tail: #{linked_list1.tail}"

puts
puts "linked_list add(element) test-cases"
linked_list1.add(5)
puts "linked_list1 head.element: #{linked_list1.head.element}"
puts "linked_list1 tail.element: #{linked_list1.tail.element}"

linked_list1.add(8)
puts "linked_list1 head.element: #{linked_list1.head.element}"
puts "linked_list1 tail.element: #{linked_list1.tail.element}"

linked_list1.add(11)
puts "linked_list1 head.element: #{linked_list1.head.element}"
puts "linked_list1 tail.element: #{linked_list1.tail.element}"

puts
puts "linked_list get(index) test-cases"
puts "linked_list1.get(0): #{linked_list1.get(0)}"
puts "linked_list1.get(1): #{linked_list1.get(1)}"
puts "linked_list1.get(2): #{linked_list1.get(2)}"
puts "linked_list1.get(3): #{linked_list1.get(3)}"

puts
puts "linked_list [] operator overloading test-cases"
puts "linked_list1[0]: #{linked_list1[0]}"
puts "linked_list1[1]: #{linked_list1[1]}"
puts "linked_list1[2]: #{linked_list1[2]}"
puts "linked_list1[3]: #{linked_list1[3]}"





