class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :calendar, foreign_key: true
      t.date :date
      t.time :time
      t.string :title
      t.text :description
      t.string :local

      t.timestamps
    end
  end
end
