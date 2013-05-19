class AddAttributeToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :price, :decimal
    add_column :vehicles, :amount_of_km, :string
    add_column :vehicles, :year, :datetime
  end
end
