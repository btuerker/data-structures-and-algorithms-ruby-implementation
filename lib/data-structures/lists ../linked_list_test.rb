require("./linked_list")

list = LinkedList.new

puts "linked_list initialization test-cases"
puts "list head: #{list.head}"
puts "list tail: #{list.tail}"

puts
puts "list add(element) test-cases"
list.add(5)
puts "list head.element: #{list.head.element}"
puts "list tail.element: #{list.tail.element}"

list.add(8)
puts "list head.element: #{list.head.element}"
puts "list tail.element: #{list.tail.element}"

list.add(11)
puts "list head.element: #{list.head.element}"
puts "list tail.element: #{list.tail.element}"

puts
puts "list get(index) test-cases"
puts "list.get(0): #{list.get(0)}"
puts "list.get(1): #{list.get(1)}"
puts "list.get(2): #{list.get(2)}"
puts "list.get(3): #{list.get(3)}"

puts
puts "linked_list [] operator overloading test-cases"
puts "linked_list1[0]: #{list[0]}"
puts "linked_list1[1]: #{list[1]}"
puts "linked_list1[2]: #{list[2]}"
puts "linked_list1[3]: #{list[3]}"


puts
puts
puts

list = LinkedList.new

print "inital list -> #{list.to_array}"
puts
list.add(5)
print "list.add(5) -> #{list.to_array}"
puts
list.add(0,11)
print "list.add(0,11) -> #{list.to_array}"
puts
list.add(1,12)
print "list.add(1,12) -> #{list.to_array}"
puts
list.remove(0)
print "list.remove(0) -> #{list.to_array}"
puts
list.remove(0)
print "list.remove(0) -> #{list.to_array}"
puts
list.remove(0)
print "list.remove(0) -> #{list.to_array}"
puts
list.remove(0)
print "list.remove(0) -> #{list.to_array}"
puts











