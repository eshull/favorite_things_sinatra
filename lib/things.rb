class Things
  @@list = []
  attr_accessor :food

  def initialize(attributes)
    @food = attributes
    # @food = attributes.fetch(:food)
    # @car = attributes.fetch(:car)
    # @color = attributes.fetch(:color)
    # @person = attributes.fetch(:person)
    # @animal = attributes.fetch(:animal)
    # @saying = attributes.fetch(:saying)
  end

  def self.all
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
