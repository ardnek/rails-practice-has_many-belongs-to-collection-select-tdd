require 'rails_helper'

#Each Cat show page should list the toys that cat owns.

feature 'Cats' do
  scenario 'User can view a cats toy on the show page / Each Cat show page should list the toys that cat owns' do
    cat = create_cat
    toy = create_toy(cat)
    visit '/'
    click_on 'Cats'
    click_on cat.name
    expect(page).to have_content toy.name
  end
end
