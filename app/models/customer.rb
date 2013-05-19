class Customer < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :vip

  validates :name, :email, :presence => { :message => 'no puede estar en blanco'}
  validates :phone, :numericality => true, :allow_blank => true
end
