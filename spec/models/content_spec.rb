require 'rails_helper'

RSpec.describe Content, type: :model do
  let(:test_content) { p FactoryGirl.create(:content)}

  describe '* Attributes *' do
    it 'has valid attributes' do
      expect(test_content).to be_valid
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
