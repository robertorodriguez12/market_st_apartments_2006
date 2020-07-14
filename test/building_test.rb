require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/renter'
require './lib/apartment'
require './lib/building'

class BuildingTest < MiniTest::Test

  def test_it_exists
    building = Building.new

    assert_instance_of Building, building
  end 

end








# => true

# # => #<Building:0x00007f83778c5a80...>
#
#  building.units
# # => []
#
#  unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
# # => #<Apartment:0x00007f8377209bb0...>
#
#  unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
# # => #<Apartment:0x00007f83779f0900...>
#
#  building.add_unit(unit1)
#
#  building.add_unit(unit2)
#
#  building.units
# # => [#<Apartment:0x00007f8377209bb0...>, #<Apartment:0x00007f83779f0900...>]
#
#  building.renters
# # => []
#
#  renter1 = Renter.new("Aurora")
# # => #<Renter:0x00007fa83bc37978...>
#
#  unit1.add_renter(renter1)
#
#  building.renters
# # => ["Aurora"]
#
#  renter2 = Renter.new("Tim")
# # => #<Renter:0x00007fa83b9b0358...>
#
#  unit2.add_renter(renter2)
#
#  building.renters
# # => ["Aurora", "Tim"]
#
#  building.average_rent
