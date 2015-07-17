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

  let(:test_course) { FactoryGirl.build(:course) }
  it 'has valid attributes' do
    expect(test_course).to be_valid
  end
  context 'associations' do
    context 'user' do
      it 'belongs_to user' do
        expect(test_course).to respond_to(:creator)
      end
      it 'is created with one user' do
        expect(test_course.creator).not_to be_empty
      end
    end
    context 'articles' do
      it 'has_many articles' do
        expect(test_course).to respond_to(:articles)
      end
      it 'is created with no articles' do
        expect(test_course.articles).to be_empty
      end
    end

  ### SHOULDA-MATCHERS TESTS ###
  # it 'should validate presence of attributes' do
  #   should validate_presenece_of(:title)
  # end
  # it 'should have many courses' do
  #   should have_many(:articles)
  # end
  end
end

