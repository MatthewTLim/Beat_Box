class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      return data
    else
      last_node = self.head
      while last_node.next_node != nil
        last_node = last_node.next_node
      end
      last_node.next_node = Node.new(data)
    end
  end

  def prepend(value)

    new_node = Node.new(value)

    if @head == nil
      @head = Node.new(value)
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def insert(position, value)
    if position < 0
      puts "Invalid position. Position must be non-negative."
      return
    end

    new_node = Node.new(value)

    if position == 0
      new_node.next_node = @head
      @head = new_node
      return
    end

    current_node = @head
    previous_node = nil
    current_position = 0

    while current_position < position && current_node != nil
      previous_node = current_node
      current_node = current_node.next_node
      current_position += 1
    end

    if current_position == position
      previous_node.next_node = new_node
      new_node.next_node = current_node
      else
        puts "Invalid position. Position exceeds the length of the list."
    end
  end

  def count
    node_count = 0
    current_node = @head

    while current_node != nil
      node_count += 1
      current_node = current_node.next_node
    end
    node_count
  end

  def to_string
    current_node = head
    string = ""

    while current_node != nil
    string += current_node.data.to_s + " "
    current_node = current_node.next_node
    end

    string.rstrip!
  end

  def find(position, element)

  current_node = @head
  index_position = 0

    while index_position < position
      current_node = current_node.next_node
      index_position += 1
    end


    string = ""
    element_counter = 0

    while element != element_counter && current_node != nil
      string += current_node.data.to_s + " "
      current_node = current_node.next_node
      element_counter += 1

    end

    return string.rstrip!
  end

  def includes?(value)
    current_node = @head
    index_count = 1

    until value == current_node.data || index_count == self.count
      current_node = current_node.next_node
      index_count += 1
    end

    if value == current_node.data
      true
    else
      false
    end
  end

  def pop
    current_node = @head
    list_length = self.count
    counter = 2

    until counter == list_length
      current_node = current_node.next_node
      counter += 1
    end

    string = ""

    if counter == list_length
      string += current_node.next_node.data
      current_node.next_node = nil
    end

    string
  end
end