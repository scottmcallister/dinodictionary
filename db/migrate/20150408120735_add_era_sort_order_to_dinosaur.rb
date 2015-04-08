class AddEraSortOrderToDinosaur < ActiveRecord::Migration
  def change
    add_column :dinosaurs, :era_sort_order, :int
  end
end
