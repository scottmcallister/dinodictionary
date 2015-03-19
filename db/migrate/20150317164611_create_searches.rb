class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :name
      t.string :era
      t.string :diet
      t.string :order
      t.integer :min_length
      t.integer :max_length
      t.integer :min_height
      t.integer :max_height

      t.timestamps null: false
    end
  end
end
