class Building

  attr_reader :units, :renters

  def initialize
  @units= []
  # @renters = [0]

  end

  def add_unit(unit)
    @units << unit
  end

  def add_renters(renter)
    @units << renter
  end

end
