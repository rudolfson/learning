# using a code block, the file get closed automatically, sort of transactions

File.open('find_1.rb', 'r') { |f| puts f.readlines.size }
