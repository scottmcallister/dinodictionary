class FixColumnName3 < ActiveRecord::Migration
  def change
  	rename_column :searches, :taxonomic_order, :taxonomy
  	rename_column :dinosaurs, :taxonomic_order, :taxonomy
  end
end
