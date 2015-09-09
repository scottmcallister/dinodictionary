class Dinosaur < ActiveRecord::Base

	def self.search(search, era, diet, location, taxonomy)
		
		if search
			where("name LIKE ? AND era LIKE ? AND diet LIKE ? AND location LIKE ? AND taxonomy LIKE ?", "%#{search}%", "%#{era}%", "%#{diet}%", "%#{location}%", "%#{taxonomy}%")
		else 
			all
		end

	end
end
