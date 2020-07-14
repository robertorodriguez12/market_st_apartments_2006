require 'minitest/autorun'
require 'minitest/nyan_cat'

class RenterTest < MiniTest::Test
  def  test_renter_exists
    renter1 = Renter.new("Jessie")

    assert_instance_of Renter, renter1

  end


end
