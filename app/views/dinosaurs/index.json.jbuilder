json.array!(@dinosaurs) do |dinosaur|
  json.extract! dinosaur, :id, :name, :era, :diet, :taxonomy, :length, :height, :image_url, :description
  json.url dinosaur_url(dinosaur, format: :json)
end
