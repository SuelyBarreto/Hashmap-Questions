
def permutations?(string1, string2)
  raise ArgumentError, "First parameter must be String" unless string1.is_a?(String)
  raise ArgumentError, "Second parameter must be String" unless string2.is_a?(String)
  
  return false if string1.length != string2.length

  letter_hash1 = Hash.new(0)
  letter_hash2 = Hash.new(0)
  string1.split("").each { |l| letter_hash1[l] += 1}
  string2.split("").each { |l| letter_hash2[l] += 1}

  return letter_hash1 == letter_hash2
end

# ("hello", "ehllo")

# def permutations?(string1, string2)

#   return false if string1.length != string2.length

#   letter_hash1 = Hash.new(0)
#   letter_hash2 = Hash.new(0)
#   string1.split("").each { |l| letter_hash1[l] += 1}
#   string2.split("").each { |l| letter_hash2[l] += 1}

#   letter_hash1.each do |k,v|
#     return false if letter_hash2[k] != v
#   end

#   return true

# end
