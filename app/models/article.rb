#
# Article.rb model
#
class Article < ApplicationRecord
  extend FriendlyId

  validates :title,  presence: true
  validates :author, presence: true

  friendly_id :title, use: :slugged
end
