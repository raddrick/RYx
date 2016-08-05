json.array!(@speakers) do |speaker|
  json.extract! speaker, :id, :name, :bio, :instagram, :facebook, :linkedin, :twitter
  json.url speaker_url(speaker, format: :json)
end
