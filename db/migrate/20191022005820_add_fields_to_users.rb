class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def up
    change_table :users, bulk: true do |t|
      t.string :name
      t.string :ira
      t.string :registration_id
    end
  end

  def down
    change_table :users, bulk: true do |t|
      t.remove :name
      t.remove :ira
      t.remove :registration_id
    end
  end
end
