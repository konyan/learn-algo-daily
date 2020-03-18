def equalizeArray(arr)
  # return arr.length if arr == arr.uniq
  # count = []
  # arr.uniq.each do |num|
  #   count << arr.count(num)
  # end
  # arr.length - count.max

  arr.length - arr.uniq.map { |num| arr.count(num)}.max
end

puts equalizeArray([3,3,2,1,3])