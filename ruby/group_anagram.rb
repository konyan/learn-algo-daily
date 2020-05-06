# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  p strs.group_by{ |s| s.chars.sort }.values
end

group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])

#["eat", "tea", "tan", "ate", "nat", "bat"]
#[['eat','tea'],['tan'],[']]