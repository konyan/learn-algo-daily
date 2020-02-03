def repeatedString(s, n)
    count = n / s.length
    reminder = n % s.length
    total_string = 'abaabaabaa'
    original_count = s.count('a')
    sub_count = s[0..reminder-1]
    if reminder > 0
      (original_count *  count) + sub_count.count('a')
    else
      (original_count *  count)
    end
end

repeatedString('a',1000000000000)
