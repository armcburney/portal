# frozen_string_literal: true

require 'rails_helper'

describe Article, type: :model do
  let(:article) { described_class.new(title: 'Title', author: 'Andrew') }

  describe 'Validations' do
    it 'is valid with valid attributes (title, author)' do
      expect(article).to be_valid
    end

    it 'is not valid without a title' do
      article.title = nil
      expect(article).to_not be_valid
    end

    it 'is not valid without an author' do
      article.author = nil
      expect(article).to_not be_valid
    end
  end
end
