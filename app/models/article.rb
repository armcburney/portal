#
# Article.rb model
#
class Article < ApplicationRecord
  validates :title,  presence: true
  validates :author, presence: true
end
