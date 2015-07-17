require 'rails_helper'

FactoryGirl.define do
  factory :course do |f|
    f.creator_id { 1 }
    f.title { Faker::Commerce.department }
    f.short_desc { Faker::Lorem.paragraph(1) }
    f.long_desc { Faker::Lorem.paragraph(5) }
    f.location { Faker::Address.city }
  end
end

RSpec.describe Course, type: :model do

  describe Course do
    let(:test_course) { FactoryGirl.build(:course) }
    it 'has valid attributes' do
      expect(test_course).to be_valid
    end
    ### SHOULDA-MATCHERS TESTS ###
    # it 'should validate presence of attributes' do
    #   should validate_presenece_of(:title)
    # end
    # it 'should have many courses' do
    #   should have_many(:articles)
    # end
    it 'has articles association, no articles' do
      expect(test_course.articles).to be_empty
    end
  end

  # describe Article do
  #   it 'belongs to a course' do
  #     fake_article = double(:fake_article)
  #     allow(Article).to receive(:new).and_return(fake_article)
  #     expect(fake_article.course).to be_empty
  #   end
  # end
end

RSpec.describe Article, type: :model do
  describe Article do
    it 'belongs to a course' do
      article = Article.new
      # allow(Article).to receive(:new).and_return(fake_article)
      # binding.pry
      expect(article.courses).to be_empty
    end
  end
end
