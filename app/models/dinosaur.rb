class Dinosaur < ActiveRecord::Base

	def self.search(search, era, diet, location, taxinomic_order)
		if search
			where("name LIKE ? AND era LIKE ? AND diet LIKE ? AND location LIKE ? AND taxonomic_order LIKE ?", "%#{search}%", "%#{era}%", "%#{diet}%", "%#{location}%", "%#{taxinomic_order}%")
		else 
			all
		end
	end
end
