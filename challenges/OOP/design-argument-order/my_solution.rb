require "pry"
class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost
  attr_accessor :address

  def initialize(house_feature = {})
    @address = house_feature[:address] || "742 Evergreen Terrace"
    @square_feet = house_feature[:square_feet] || "n/a"
    @num_bedrooms = house_feature[:num_bedrooms] || 1
    @num_baths = house_feature[:num_baths] || 1
    @cost = house_feature[:cost] || 10000
    @down_payment = house_feature[:down_payment] || 0.2
    @sold = house_feature.fetch(:sold) { false }
    @short_sale = house_feature[:short_sale] || "n/a"
    @has_tenants = house_feature.fetch(:has_tenants) { false }
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    p money
    @sold = true if money >= @down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
  binding.pry
end


# Pon driver code aca para probar que todo este funcionando.
###### DRIVER CODE ########
<<<<<<< HEAD
my_house = House.new({num_bedrooms: 3, num_baths: 2, cost: 320_000, down_payment: 0.20})
=======




>>>>>>> upstream/master
