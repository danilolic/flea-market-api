class AddActiveToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :active, :boolean, defaul: false
  end
end
