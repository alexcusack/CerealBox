require 'rails_helper'

FactoryGirl.define do
  factory :user do |f|
    f.username { Faker::Name.first_name }
    f.username { Faker::Name.first_name }
    f.username { Faker::Name.first_name }
    f.username { Faker::Name.first_name }
  end
end

RSpec.describe Widget, type: :model do

  describe User do
    let(:test_user) { Factory.create(:user) }
    # it { should respond_to(:username) }
    # ...more like the above, if desired
      it 'has valid attributes' do
        expect(test_user).to be_valid
      end
      it 'should validate presence of attributes' do
        should validate_presenece_of(:username, :email)
      end
      it 'should have many courses' do
        should have_many(:courses)
      end
    end
  end
end


