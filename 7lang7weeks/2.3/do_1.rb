# Print the contents of an array of sixteen numbers,
# four numbers at a time, using just each.

origin = []
16.times { origin << rand(100) }
p origin

puts "using just each"
i = 0
line = []
a = Array.new(origin)
a.each { |n|
    i += 1
    line << n
    if i % 4 == 0 then
        puts line.join(' ')
        line = []
    end
}

puts "using each_slice"
a = Array.new(origin)
a.each_slice(4) { |slice|
    puts slice.join(' ')
}
