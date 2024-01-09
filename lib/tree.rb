# frozen_string_literal: true

class Node # rubocop:disable Style/Documentation
  attr_accessor :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def to_s
    @data.to_s
  end
end

class Tree # rubocop:disable Style/Documentation
  attr_accessor :root

  def initialize(data = nil)
    @root = Node.new data
  end

  def simetric_traversal(node = nil)
    node = @root if node.nil?

    if node.left
      print '('
      simetric_traversal(node.left)
    end

    print node

    return unless node.right

    simetric_traversal(node.right)
    print ')'
  end
end

# Representing the expression
# (a + (b * ((c/d) - e)))

tree = Tree.new
n1 = Node.new 'a'
n2 = Node.new '+'
n3 = Node.new '*'
n4 = Node.new 'b'
n5 = Node.new '-'
n6 = Node.new '/'
n7 = Node.new 'c'
n8 = Node.new 'd'
n9 = Node.new 'e'

n6.left = n7
n6.right = n8
n5.left = n6
n5.right = n9
n3.left = n4
n3.right = n5
n2.left = n1
n2.right = n3
tree.root = n2

tree.simetric_traversal

# (a + (b * ((c/d) - e)))
