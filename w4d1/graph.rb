require "set"
class GraphNode
    attr_reader :value
    attr_accessor :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end
end

def bfs(starting_node,target_value)
    nodes = Queue.new
    nodes.enq(starting_node)
    searched = Set.new
    until nodes.empty?
        current_node = nodes.shift
        return current_node if current_node.value == target_value
        searched.add(current_node)
        current_node.neighbors.each do |node|
            nodes.enq(node) unless searched.include?(node)
        end
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")