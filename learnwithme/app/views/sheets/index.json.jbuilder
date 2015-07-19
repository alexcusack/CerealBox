json.array!(@sheets) do |sheet|
  json.extract! sheet, :id, :user_id, :article, :image, :video, :map, :title, :description
  json.url sheet_url(sheet, format: :json)
end
