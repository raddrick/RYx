json.array!(@talks) do |talk|
  json.extract! talk, :id, :title, :description, :video, :speaker_id
  json.url talk_url(talk, format: :json)
end
