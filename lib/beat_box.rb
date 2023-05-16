class BeatBox

  attr_reader :list

  def initialize()
    @list = LinkedList.new
  end

  def append(value)
    formatted_value = value.split(" ")
    formatted_value.each do |value|
      self.list.append(value)
    end
    return formatted_value
  end

  def count
    self.list.count
  end

  def play
  beat = self.list.to_string
  return `say -r 150 -v Daniel #{beat}`
  end
end