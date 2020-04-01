# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  current_sum=0
  best_sum =nums[0]

  nums.each do |x|
    current_sum = [x,current_sum + x].max
    best_sum = [best_sum,current_sum].max
  end

  best_sum
end

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])