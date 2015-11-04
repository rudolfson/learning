# translate a hash into an array
hash = { :a => 1, :b => 2, :c => 3 }
p hash.to_a

# translate an array into a hash
a = [[:a, "one"], [:b, "two"], [:c, 'three']]
p a.to_h
