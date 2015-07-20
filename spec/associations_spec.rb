require 'rails_helper'

RSpec.describe User, type: :model do
    it 'has_many owned_courses' do
      should have_many(:owned_courses)
    end
    it 'has_many owned_sheets' do
      should have_many(:owned_sheets)
    end
    it 'has_many enrollments' do
      should have_many(:enrollments)
    end
end

RSpec.describe Course, type: :model do
    it 'belongs_to owner' do
      should belong_to(:owner)
    end
    it 'has_many members' do
      should have_many(:members)
    end
    it 'has_many sheets' do
      should have_many(:sheets)
    end
end

RSpec.describe Sheet, type: :model do
    it 'belongs_to owner' do
      should belong_to(:owner)
    end
    it 'has_many courses' do
      should have_many(:courses)
    end
end

