class Ship
  attr_reader :name, :type, :booty
  SHIPS = []
  def initialize(name,type,booty)
    @name = name
    @type = type
    @booty = booty
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def clear
    SHIPS.delete_all
  end
end
