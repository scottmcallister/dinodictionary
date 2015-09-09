class Dinosaur < ActiveRecord::Base

	def self.search(search, era, diet, location, taxonomy)
		
		if search
			where("lower(name) LIKE ? AND lower(era) LIKE ? AND lower(diet) LIKE ? AND lower(location) LIKE ? AND lower(taxonomy) LIKE ?", "%#{search}%", "%#{era}%", "%#{diet}%", "%#{location}%", "%#{taxonomy}%")
		else 
			all
		end

	end
end
