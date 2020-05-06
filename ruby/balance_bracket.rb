def balance_bracket?(string)
  stack = []
  open_brackets = ['(','[','{']
  close_brackets = [')',']','}']

  string.chars.each do |char|
    if open_brackets.include?(char)
      stack << char
    elsif close_brackets.include?(char)
      val = stack.pop
      return false if open_brackets.index(val) != close_brackets.index(char)
    end
  end

  stack.empty?

end

puts balance_bracket?('(hello)[world]')
# => true

puts balance_bracket?('([)]')
# => false

puts balance_bracket?('[({}{}{})([])]')
# => true