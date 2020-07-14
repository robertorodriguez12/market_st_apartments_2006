class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms
  def initialize(information)
    @number = information[:number]
    @monthly_rent = information[:monthly_rent]
    @bathrooms = information[:bathrooms]
    @bedrooms = information[:bedrooms]
  end 
end
