class CreateDinosaurs < ActiveRecord::Migration
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.string :era
      t.string :diet
      t.string :order
      t.integer :length
      t.integer :height
      t.string :image_url
      t.text :description

      t.timestamps null: false
    end
  end
end
