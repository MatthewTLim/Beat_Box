class Node

  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
  end
end