module ActsAsCsv
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        def read
            @csv_contents = []
            file = File.new(self.class.to_s.downcase + '.txt')
            @headers = file.gets.chomp.split(',')
            file.each do |row|
                @csv_contents << row.chomp.split(',')
            end
        end

        attr_accessor :headers, :csv_contents

        def initialize
            read
        end

        def each(&block)
            @csv_contents.each do |row|
                block.call(CsvRow.new(@headers, row))
            end
        end
    end
end

class CsvRow
    def method_missing name, *args
        @data[@headers.find_index(name.to_s)]
    end
    def initialize headers, data
        @headers = headers
        @data = data
    end
end

class RubyCsv # no inheritance, use mixin
    include ActsAsCsv
    acts_as_csv
end

m = RubyCsv.new
p m.headers
m.each do |row|
    p row.col2
end
