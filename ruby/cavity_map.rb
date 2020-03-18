def cavityMap(grid)
  org_arr = []
  result = []

  grid.each do |val|
    arr = val.split("")
    org_arr << arr
  end

  org_arr.each_with_index do |val,index|
    unless index == 0 || index == org_arr.length-1
      val.each_with_index do |child,childIndex|
        unless childIndex == 0 || childIndex == val.length - 1
          # p childIndex, child
          # p org_arr[index - 1][childIndex]
          top_val = org_arr[index - 1][childIndex]
          bottom_val = org_arr[index + 1][childIndex]
          left_val = val[childIndex - 1]
          right_val = val[childIndex + 1]
          # puts "#{top_val} - #{bottom_val} - #{left_val} - #{right_val}"
          if child > top_val && child > bottom_val && child > left_val && child > right_val
            val[childIndex] = "X"
          end
        end
      end
    end
    result << val.join("")
  end

  puts result
end

p cavityMap(["1112","1912","1892","1234"])
# [[1,1,1,2],
# [1,9,1,2],
# [1,8,9,2],
# [1,2,3,4]]