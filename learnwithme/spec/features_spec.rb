require 'rails_helper'

RSpec.feature "Creating a sheet from course page",
  type: :feature do

  it 'creates a new Course' do
    visit '/courses/1'
    click_link 'New Sheet'
    expect(current_url).to include '/courses'
    expect(current_url).to include '/sheets/new'
    expect(html).to include '<form'
    expect(page).to have_text 'Title'
    expect(page).to have_text 'Article'
  end

end

# RSpec.describe 'new sheet from course page',
#   type: :model do
#   it 'sheet should have a course' do
#     p Sheet.last
#   end

# end
