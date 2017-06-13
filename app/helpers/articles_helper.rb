# Helper methods for article views
module ArticlesHelper
  module_function

  LABELS = %i[title author description].freeze

  # Parser to convert markdown into HTML
  MARKDOWN_PARSER = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

  # Render markdown and return HTML
  def render_html!(text)
    MARKDOWN_PARSER.render(text)
  end
end
