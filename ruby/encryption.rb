def encryption(s)
  s_array = s.gsub(/\s+/, "").split("")
  row = Math.sqrt(s_array.length).floor
  col = Math.sqrt(s_array.length).ceil
  result = Array.new(( row * row ) + ( col - 1 ))
  for i in 0..s_array.length do
    pos = i + col if row == col
    result[pos] = s_array[i]
  end
  puts s_array.length
  puts result.length
  puts result.join

end

myString = "nyan lin tun is grea"
encryption(myString)


# nyan
# lint
# unis
# grea
# t

#nlugt yinr anie ntsa
# 0,6,11,16,
# 1,7,12,17,
# 2,8,13,18,
# 3,9,14,19,
# 4,10,15,20
# 5