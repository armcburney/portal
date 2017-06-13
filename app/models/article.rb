#
# Article.rb model
#
class Article < ApplicationRecord
  validates :title,  presence: true
  validates :author, presence: true

  @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

  # Render markdown and return HTML
  def render!(text)
    @markdown.render(text)
  end
end
