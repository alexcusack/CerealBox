require 'rails_helper'
RSpec.describe Widget, type: :model do

  describe User do

    it { should respond_to(:username) }
    # ...more like the above, if desired

    context 'validations' do
      it 'should validate presence of' do
        should validate_presenece_of(:username, :email)
      end
      it 'should have many courses' do
        should have_many(:courses)
      end
    end
  end
end

