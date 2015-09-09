require 'csv'

namespace :csv do

  	desc "Import CSV Data"
  	task :import_stuff => :environment do

	  	Dinosaur.delete_all
	    csv_file_path = 'db/data.csv'

	    CSV.foreach(csv_file_path, {:headers => true, :col_sep => "\t", :skip_blanks => true}) do |row|
	    	if row[0] != "name" 				# skip header row
	    		era = row[1]
	    		sort_order = case era
				    when "Early Triassic"
				    	1
				    when "Triassic"
				    	2
				    when "Mid Triassic"
				    	3
				    when "Late Triassic"
				    	4
				    when "Early Jurassic"
				    	5
				    when "Jurassic"
				    	6
				    when "Mid Jurassic"
				    	7
				    when "Late Jurassic"
				    	8
				    when "Early Cretaceous"
				    	9
				    when "Cretaceous"
				    	10
				    when "Mid Cretaceous"
				    	11
				    when "Late Cretaceous"
				    	12
			    end

			    Dinosaur.create!({
				    :name => row[0],
				    :era => row[1],
				    :diet => row[2],     
				    :taxonomy => row[3], 
			    	:length => row[4],
				    :image_url => row[5], 
				    :description => row[6],
				    :location => row[7],
				    :era_sort_order => sort_order
			    })
			    puts "Row added!"
			end
	    end
  	end
end