# translate a hash into an array
hash = { :a => 1, :b => 2, :c => 3 }
puts hash.to_a.to_s

# translate an array into a hash
a = [[:a, "one"], [:b, "two"], [:c, 'three']]
puts a.to_h.to_s
