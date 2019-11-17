class ChangeActiveDefaultValueToListings < ActiveRecord::Migration[5.2]
  def change
    change_column_default :listings, :active, true
  end
end
