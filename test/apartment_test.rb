require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/renter'
require './lib/apartment'
require 'pry'


class ApartmentTest < MiniTest::Test

  def test_it_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, unit1

  end

  def test_aparment_has_attributes
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", unit1.number

    assert_equal 1200, unit1.monthly_rent

    assert_equal 1, unit1.bathrooms

    assert_equal 1, unit1.bedrooms
  end

end



# # => 1
#
# pry(main)> unit1.renter
# # => nil
#
# pry(main)> unit1.add_renter(renter1)
#
# pry(main)> unit1.renter
# # => #<Renter:0x00007fb3ee106ce8...>
