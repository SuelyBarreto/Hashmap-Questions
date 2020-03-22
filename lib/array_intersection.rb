def intersection(list1, list2)
  raise ArgumentError, "First parameter must be array" unless list1.is_a?(Array)
  raise ArgumentError, "Second parameter must be array" unless list2.is_a?(Array)

  inter_hash = Hash.new(0)

  list1.each { |v| inter_hash[v] += 1}
  list2.each { |v| inter_hash[v] += 1}
  return inter_hash.select { |k, v| v == 2}.keys
end