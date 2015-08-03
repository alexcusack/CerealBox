require 'rails_helper'

RSpec.describe Course, type: :model do
  let(:test_course) { p FactoryGirl.build(:course) }

  describe '* Attributes *' do
    it 'has valid attributes' do
      expect(test_course).to be_valid
    end
  end

  describe '* Validations *' do
    it 'should validate presence of attributes' do
      should validate_presence_of(:title)
    end
  end

  describe '* Associations *' do
    context 'user' do
      it 'belongs_to user' do
        should belong_to(:user)
      end
    end
    context 'articles' do
      it 'has_many articles' do
        should have_many(:articles)
      end
    end
  end


end

