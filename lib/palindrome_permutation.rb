
def palindrome_permutation?(string)
  raise ArgumentError, "Parameter must be String" unless string.is_a?(String)
  
  letter_hash = Hash.new(0)
  string.split("").each { |l| letter_hash[l] += 1}

  return letter_hash.select { |k, v| v.odd? }.size <= 1
end