def find_digits(n)
  counter = 0
  number_array = n.to_s.split("")
  number_array.each { |x|  counter += 1 if x.to_i != 0 && n % x.to_i == 0}
  puts counter
end


puts find_digits(25)