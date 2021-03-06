
require('rspec')
require('things')

describe("#things") do
  it("returns a list") do
    expect(Things.all()).to(eq([]))
  end
end
  describe("#save") do
  it("saves an item to the list of items") do
    things = Things.new("kiwi")
    things.save()
    expect(Things.all()).to(eq([things]))
  end
end
describe(".clear") do
  it("clears all items from the list") do
    things = Things.new("kiwi")
    things.save()
    Things.clear()
    expect(Things.all()).to(eq([]))
  end
end

describe(".find") do
    it("finds an item based on its id") do
      things = Things.new("tacos")
      things.save()
      things2 = Things.new("pizza")
      things2.save()
      expect(Things.find(1)).to(eq(things))
      expect(Things.find(2)).to(eq(things2))
    end
  end

describe("#id") do
  it("increments an id by 1 each time a new item is added") do
    Things.clear
    things = Things.new("tacos")
    things.save()
    things2 = Things.new("pizza")
    things.save()
    expect(things.id()).to(eq(1))
    expect(things2.id()).to(eq(2))
  end
end

# describe(".Things") do
#   it("returns a list of favorite things") do
#
#     things = Things.new({:food=> "kiwi", :car=> 7, :color=> "red", :person=> 3, :animal=> "black", :saying=>"dotted"})
#     expect(things.food()).to(eq("kiwi"))
#   end
# end

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
