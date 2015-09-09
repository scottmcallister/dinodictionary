class Search < ActiveRecord::Base

	def search_dinosaurs

		dinosaurs = Dinosaur.all

		dinosaurs = dinosaurs.where(["name LIKE ?", "%#{keywords}%"]) if keywords.present?
		dinosaurs = dinosaurs.where(["era LIKE ?", "%#{era}%"]) if era.present?
		dinosaurs = dinosaurs.where(["diet LIKE ?", "%#{diet}%"]) if diet.present?
		dinosaurs = dinosaurs.where(["location LIKE ?", "%#{location}%"]) if location.present?
		dinosaurs = dinosaurs.where(["taxonomy LIKE ?", "%#{taxonomy}%"]) if taxonomic_order.present?

		return dinosaurs
	end

end
