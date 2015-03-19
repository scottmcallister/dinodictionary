class AddLocationToDinosaurs < ActiveRecord::Migration
  def change
    add_column :dinosaurs, :location, :string
  end
end
