require 'rails_helper'

FactoryGirl.define do
  factory :course do |f|
    f.creator_id { Faker::Name.creator_id }
    f.title { Faker::Commerce.department }
    f.short_desc { Faker::Lorem.paragraph(1) }
    f.long_desc { Faker::Lorem.paragraph(5) }
    f.location { Faker::Address.city }
  end
end

RSpec.describe Widget, type: :model do

  describe Course do
    let(:test_course) { Factory.create!(:course) }
      # it 'responds to all expected attributes' do
      #     test_course.instance_variables.each do |attribute|
      #       exptect
      #     end
      # end
      it 'has valid attributes' do
        expect(test_course).to be_valid
      end
      it 'should validate presence of attributes' do
        should validate_presenece_of(:title)
      end
      it 'should have many courses' do
        should have_many(:courses)
      end
    end
  end
end
