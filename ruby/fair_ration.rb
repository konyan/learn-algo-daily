def fairRations(b)
  count = 0
  b.each_with_index do |val,index|
    break if index == b.length-1
    nexPos = index + 1
    unless val.even?
        #odd number
        b[index] = val + 1
        #next position
        b[nexPos] = b[nexPos] + 1
        # add 2
        count = count + 2;
    end
  end
  # puts b
  b[b.length-1].odd? ? "NO" : count
end

b= [2, 3, 4 ,5 ,6]
c= [1,2]

puts fairRations(b)
puts fairRations(c)
