class Search < ActiveRecord::Base

	# perform a query using search parameters
	def search_dinosaurs

		dinosaurs = Dinosaur.all

		# make case insensitive queries for postgres compatibility (using heroku for production)
		
		dinosaurs = dinosaurs.where(["lower(name) LIKE ?", "%#{keywords}%"]) if keywords.present?
		dinosaurs = dinosaurs.where(["lower(era) LIKE ?", "%#{era}%"]) if era.present?
		dinosaurs = dinosaurs.where(["lower(diet) LIKE ?", "%#{diet}%"]) if diet.present?
		dinosaurs = dinosaurs.where(["lower(location) LIKE ?", "%#{location}%"]) if location.present?
		dinosaurs = dinosaurs.where(["lower(taxonomy) LIKE ?", "%#{taxonomy}%"]) if taxonomy.present?

		return dinosaurs
	end

end
