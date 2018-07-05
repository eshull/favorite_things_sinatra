class Things
  @@list = []
  attr_accessor :food
  attr_reader :id

  def initialize(attributes)
    # @food = food
    @id = @@list.length + 1
    @food = attributes.fetch(:food)
    @car = attributes.fetch(:car)
    @color = attributes.fetch(:color)
    @person = attributes.fetch(:person)
    @animal = attributes.fetch(:animal)
    @saying = attributes.fetch(:saying)
  end

  def self.find(id)
    item_id = id.to_i()
    @@list.each do |item|
      if item.id == item_id
        return item
      end
    end
  end

  def self.all()
    @@list
  end

  def self.find(food)
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
   @@list = []
  end

end
