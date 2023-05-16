require "./lib/linked_list"
require "./lib/node"

describe "Linked_List" do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_a(LinkedList)
  end

  it "has readable attributes" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end
end

describe "#append" do
  it "can modify the data attribute of a node" do
    list = LinkedList.new

    expect(list.append("doop")).to eq(list.head.data)
    expect(list.head.next_node).to eq(nil)

    list.append("deep")

    expect(list.head.next_node.data).to eq ("deep")
  end
end

describe "#prepend" do
  it "can add nodes to the beggining of the list" do
    list = LinkedList.new

    list.append("plop")

    expect(list.to_string).to eq("plop")

    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end
end

describe "#insert" do
  it "can insert nodes ata  given position in the list" do
    list = LinkedList.new

    list.append("plop")

    expect(list.to_string).to eq("plop")

    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)

    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end
end

describe "#count" do
  it "can count the number of nodes within the list" do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it "can count more than one node within the list" do
    list = LinkedList.new

    list.append("doop")
    list.append("deep")

    expect(list.count).to eq(2)
  end
end

describe "#to_string" do
  it "return the data stored in a node as a string" do
    list = LinkedList.new

    list.append("doop")

    expect(list.to_string).to eq("doop")
  end

  it "can return mutiple strings stored in mutiple nodes" do
    list = LinkedList.new

    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end
end

describe "#find" do
  it "can find a specific data within the list" do
    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq("shi")
  end

  it "can return multiple elements at the same time" do
    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end
end

describe "#includes?" do
  it "gives back true or false whether the supplied value is in the list" do
    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)
  end
end

describe "#pop" do
  it "removes elements the last element from the list." do
    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
  end
end
