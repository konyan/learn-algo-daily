def repeatedString(s, n)
    count = n / s.length
    reminder = n % s.length
    original_count = s.count('a') # 2
    sub_count = s[0...reminder]
    if reminder > 0
      (original_count *  count) + sub_count.count('a')
    else
      (original_count *  count)
    end
end

repeatedString('a',1000000000000)
