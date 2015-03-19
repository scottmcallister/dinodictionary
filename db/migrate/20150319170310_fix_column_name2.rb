class FixColumnName2 < ActiveRecord::Migration
  def change
  	rename_column :searches, :order, :taxonomic_order
  end
end
