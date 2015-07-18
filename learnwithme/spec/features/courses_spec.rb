require 'rails_helper'

RSpec.feature "Courses", type: :feature do

  it 'creates a new Course' do
    visit '/courses/new'
    fill_in 'Title', with: 'Donkeys'
    fill_in 'Short desc', with: 'Love donkeys.'
    fill_in 'Long desc', with: 'I really love donkeys.'
    fill_in 'Location', with: 'SF'
    click_button 'Create new course'
    expect(page).to have_text('Donkeys')
  end

end
