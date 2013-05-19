class Vehicle < ActiveRecord::Base
  belongs_to :brand
  belongs_to :vehicle_type
  belongs_to :customer
  attr_accessible :name, :brand_id, :vehicle_type_id, :customer_id, :price, :amount_of_km, :year, :fuel_type

  validates :name, :brand_id, :price, :fuel_type, :year, :presence => {:message => 'no puede estar en blanco'}
  validates :price, :numericality => true, :allow_blank => true
  validates :amount_of_km, :numericality => true, :allow_blank => true

  def full_name
    "#{brand.name} #{name} (#{vehicle_type.name})"
  end
end