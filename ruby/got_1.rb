def gameOfThrones(s)
  # {a, 1}
  my_map = {}
  count = 0
  s.split("").each do |char|
    unless my_map.key?(char)
      my_map[char] = 1
    else
      my_map[char] = my_map[char] + 1
    end
  end
  my_map.each do |key, value|
    count += 1 if value.odd?
  end
  count > 1 ? "NO" : "YES"
end
# O(n) + O(n)
# 20(n)
# O(n)
# puts gameOfThrones("cdcdcdcdeeeef")
puts gameOfThrones("cdefghmnopqrstuvw")