def intersection(list1, list2)
  raise ArgumentError, "Parameters must be arrays" unless list1.is_a?(Array)
  raise ArgumentError, "Parameters must be arrays" unless list1.is_a?(Array)
  
  inter_hash = Hash.new(0)

  list1.each { |v| inter_hash[v] += 1}
  list2.each { |v| inter_hash[v] += 1}
  # inter_hash = {2 => 1, 3 => 1, 4 => 2, 5 => 1, 6 => 1 }
  # result = []
  # inter_hash.each { |k,v| result << k if v == 2 }
  return inter_hash.select { |k, v| v == 2}.keys

end