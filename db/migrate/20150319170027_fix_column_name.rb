class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :dinosaurs, :order, :taxonomic_order
  end
end
