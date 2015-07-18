require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:test_article) { p FactoryGirl.create(:article)}

  describe '* Attributes *' do
    it 'has valid attributes' do
      expect(test_article).to be_valid
    end
  end

  describe '* Validations *' do
    it 'should validate presence of attributes' do
      should validate_presence_of(:title)
      should validate_presence_of(:link)
    end
  end

  describe '* Associations *' do
    context 'course' do
      it 'belongs_to user' do
        should belong_to(:course)
      end
    end
  end

end
