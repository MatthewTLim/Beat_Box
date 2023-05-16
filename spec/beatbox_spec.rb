require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

describe "BeatBox" do
  it "exists" do
    bb = BeatBox.new

    expect(bb).to be_a(BeatBox)
  end

  it "has readable attributes" do
    bb = BeatBox.new

    expect(bb.list).to be_a(LinkedList)
    expect(bb.list.head).to eq(nil)
  end
end

describe "#append" do
  it "can add mutiple nodes at the same time from a string" do
    bb = BeatBox.new

    bb.append("deep doo ditt")

    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")

    bb.append("woo hoo shu")

    expect(bb.count).to eq(6)
  end
end

describe "#count" do
  it "can count the items added to the list" do
    bb = BeatBox.new

    bb.append("deep doo ditt")

    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")

    bb.append("woo hoo shu")

    expect(bb.count).to eq(6)
  end
end

describe "#play" do
  it "can generate the string content of the Beat and use it as input to the say command." do
    bb = BeatBox.new

    bb.append("deep doo ditt woo hoo shu")

    expect(bb.count).to eq(6)
    expect(bb.list.count).to eq(6)

    bb.play
  end
end