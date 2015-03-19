require 'csv'

namespace :csv do

  	desc "Import CSV Data"
  	task :import_stuff => :environment do

	  	Dinosaur.delete_all
	    csv_file_path = 'db/data.csv'

	    CSV.foreach(csv_file_path, {:headers => true, :col_sep => "\t", :skip_blanks => true}) do |row|
	    	if row[0] != "name" 				# skip header row
			    Dinosaur.create!({
				    :name => row[0],
				    :era => row[1],
				    :diet => row[2],     
				    :taxonomic_order => row[3], 
			    	:length => row[4],
				    :image_url => row[5], 
				    :description => row[6],
				    :location => row[7]
			    })
			    puts "Row added!"
			end
	    end
  	end
end