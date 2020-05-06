# def sliding_maximum(k, array)
#   # your code here
#   resultArray =  Array.new

#   array.each_with_index do |a ,index |
#     val = index + k-1
#     # puts val
#     if val < array.size
#       tempBig = 0
#       for aa in index..val do
#         res = array[aa]
#         if tempBig < res
#           tempBig = res
#         end
#       end
#       resultArray.push(tempBig)
#     end
#   end
#   return resultArray
#   # puts resultArray
# end

# sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# # => [5, 7, 9, 9]


# def sliding_maximum(k, array)
#   # your code here
#   # i j , i start from index =0, j start from k
#   i = 0;
#   j = k;
#   maxArray = [];
#   until j ===  array.length + 1
#     maxArray << array[i...j].max();
#     i +=1;
#     j +=1;
#   end
#   p maxArray;
# end

# sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# # => [5, 7, 9, 9]


def sliding_maximum(k,array)
  array.each_cons(k).map(&:max)
end

p sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# # => [5, 7, 9, 9]
