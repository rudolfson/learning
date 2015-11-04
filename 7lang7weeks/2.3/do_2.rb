class Tree
    attr_accessor :children, :node_name

    def initialize(nameOrHash, children=[])
        if nameOrHash.is_a? Hash then
            nameOrHash.each { |name, children| initialize(name, children) }
        elsif children.is_a? Array then
            @children = children
            @node_name = nameOrHash
        elsif children.is_a? Hash then
            @node_name = nameOrHash
            @children = []
            children.each { |name, childhash| @children << Tree.new(name, childhash) }
        end
    end

    def visit_all(&block)
        visit &block
        children.each { |c| c.visit_all &block }
    end

    def visit(&block)
        block.call self
    end
end

ruby_tree = Tree.new( { 'grandpa' => { 'dad' => { 'child 1' => {}, 'child 2' => {} }, 'uncle' => { 'child 3' => {}, 'child 4' => {} } } } )

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}

