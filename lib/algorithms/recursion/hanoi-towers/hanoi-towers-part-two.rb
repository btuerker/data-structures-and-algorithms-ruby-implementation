def hanoi_steps(number_of_discs)
  move_disk(number_of_discs, 2, 1, 3)
end
# move_disk(2,2,1,3)            aux, start, end
# left recursion  -> move_disk(1,3,1,2) -> move_disk(0,3,1,2) -> "1->2"
#   left result -> "1->2"
#    mid result -> "1->3"
# right recursion -> move_disk(1,1,2,3) -> move_disk(0,1,2,3) -> "2->3"
#  right result -> "2->3"
# move_disk(3,2,1,3)
#                    left move_disk(2,3,1,2)  -> left  move_disk(1,2,1,3) base case: 1->3
#                         -> left  1->3
#                         -> before right push 1->2
#                                             -> right move_disk(1,1,3,2) base case: 3->2
#                         -> right 3->2
#                    -> left return 1->3 1->2 3->2
#                    -> before right push 1->3
#                    right move_disk(2,1,2,3) -> left  move_disk(1,3,2,1) base case: 2->1
#                         -> left 2->1
#                         -> before right push 2->3
#                                             -> right move_disk(1,2,1,3) base case: 1->3
#                       -> right 1->3
#                     right return 2->1 2->3 1->3
# completed with result = 1->3 1->2 3->2 1->3 2->1 2->3 1->3
#                                         3,2,1,3
#                          ("1->3 1->2 3->2 1->2 2->3 1->3")
#                   2,3,1,2                                   2,1,2,3
#             ("1->3 1->2 3->2")                        ("1->2 2->3 1->3")
#         1,2,1,3           1,1,3,2                    1,3,2,1           1,2,1,3
#        ("1->3")   1->2    ("3->2")      1->3      ("2->1)     2->3     ("1->3")
def move_disk(n, aux_peg, start_peg, end_peg)
  result = ""
  return "#{start_peg}->#{end_peg} " if n == 1
  result << move_disk(n - 1, end_peg, start_peg, aux_peg)
  result << "#{start_peg}->#{end_peg} "
  result << move_disk(n - 1, start_peg, aux_peg, end_peg)
end

puts hanoi_steps(2)
# => 1->2 1->3 2->3

puts hanoi_steps(3)
# => 1->3 1->2 3->2 1->3 2->1 2->3 1->3

puts hanoi_steps(4)
# => 1->2 1->3 2->3 1->2 3->1 3->2 1->2 1->3
#    2->3 2->1 3->1 2->3 1->2 1->3 2->3

