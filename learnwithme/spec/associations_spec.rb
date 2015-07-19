require 'rails_helper'

RSpec.describe Course, type: :model do
    it 'belongs_to user' do
      should belong_to(:owner)
    end
    it 'has_many sheets' do
      should have_many(:sheet)
    end
end