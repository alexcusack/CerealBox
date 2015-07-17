require 'rails_helper'

RSpec.describe Article, type: :model do

  describe Article do
    it 'is created with no courses' do
      article = Article.new
      # allow(Article).to receive(:new).and_return(fake_article)
      # binding.pry
      expect(article.courses).to be_empty
    end
  end

end
