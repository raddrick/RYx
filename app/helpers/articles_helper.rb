module ArticlesHelper
  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end
