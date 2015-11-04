# simple grep, call with pattern and filename

file = ARGV[1]

File.open(file, 'r') { |f|
    f.each_line { |line|
        puts "#{f.lineno}: #{line}" if line =~ pattern
    }
}
