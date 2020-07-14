require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'pry'

class BuildingTest < MiniTest::Test

  def test_it_exists
    building = Building.new

    assert_instance_of Building, building
  end

  def test_building_has_no_units
    building = Building.new

    assert_nil nil, building.units
  end

  def test_building_can_add_units
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_building_has_no_renters
    building = Building.new

    assert_nil nil, building.renters

  end

  def test_building_can_add_renters
    building = Building.new
    renter1 = Renter.new("Aurora")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter2 = Renter.new("Tim")

    building.add_unit(unit1)
    building.add_unit(unit2)

    unit1.add_renter(renter1)
    binding.pry

    assert_equal [renter1], building.renters

    unit2.add_renter(renter2)

    assert_equal [renter1, renter2], building.renters

  end

end














#

#
#  building.average_rent
