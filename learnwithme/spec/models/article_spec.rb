require 'rails_helper'

FactoryGirl.define do
  factory :article do |f|
    f.title { Faker::Commerce.department }
    f.link { Faker::Internet.url }
  end
end

RSpec.describe Article, type: :model do
  let(:test_article) { FactoryGirl.build(:article)}
  it 'has valid attributes' do
    expect(test_article).to be_valid
  end
  context 'associations' do
    it 'has_many courses' do
      expect(test_article).to respond_to(:courses)
    end
    it 'is created with at least one course' do
      expect(test_article.courses).to be_empty
    end
  end

  it 'should validate presence of title' do
    should validate_presence_of(:title)
  end

end
