
require('rspec')
require('things')

describe("#things") do
  it("returns a list") do
    expect(Things.all()).to(eq([]))
  end
  # it("returns a list of favorite things") do
  #   things = Things.new({:food=> "kiwi", :car=> 7, :color=> "red", :person=> 3, :animal=> "black", :saying=>"dotted"})
  #   expect(things.food()).to(eq("kiwi"))
  # end
end
#
# describe('#riddles') do
#   it ("what is the sweetest thing? Rich or poor, refreshing, and one would die without its sweet embrace") do
#     riddle = Riddle.new("sleep", "time")
#   expect(riddle.riddle_method).to(eq("You shall PASS!"))
#   end
#   it ("What is the most precious resource? Non-renewable, limitless but finite in a lifetime, everyone dreams to do with this as they please") do
#     riddle = Riddle.new("sleep", "time")
#   expect(riddle.riddle_method).to(eq("You shall PASS!"))
#   end
# end
