# arrays as stack
a = []
a.push("a")
a.push('b')
puts a.pop
puts a.pop

# arrays as queue
a = []
a << 1
a << 2
a << 3
a << 4

until a.empty? do
    puts a.shift
end
