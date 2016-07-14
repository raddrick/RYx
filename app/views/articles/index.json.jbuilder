json.array!(@articles) do |article|
  json.extract! article, :id, :title, :stub, :body, :landing, :published, :author, :publish_by
  json.url article_url(article, format: :json)
end
