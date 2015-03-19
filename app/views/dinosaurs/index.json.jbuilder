json.array!(@dinosaurs) do |dinosaur|
  json.extract! dinosaur, :id, :name, :era, :diet, :taxonomic_order, :length, :height, :image_url, :description
  json.url dinosaur_url(dinosaur, format: :json)
end
