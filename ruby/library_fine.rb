# Complete the libraryFine function below.
def libraryFine(d1, m1, y1, d2, m2, y2)
  if y2 < y1
    10000
  elsif y2 > y1
     0
  elsif m2 < m1
     500 * (m1 - m2)
  elsif m2 > m1
     0
  elsif d2 < d1
     15 * (d1 - d2)
  else
     0
  end
end

puts libraryFine(9,6,2015,9,6,2015)