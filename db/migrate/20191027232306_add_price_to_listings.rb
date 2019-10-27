class AddPriceToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :price, :integer, default: 0
  end
end
