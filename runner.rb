require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

@bb = BeatBox.new

loop do
puts "Hello welcome to Beat Box"
puts "Please enter the text you would like to hear, if you would like to exit please press ctrl + c"

text = gets.chomp

@bb.append(text)
@bb.play
end

