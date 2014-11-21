require 'rails_helper'

#Each Cat show page should list the toys that cat owns.

feature 'Cats' do
  scenario 'User can view a cats toy on the show page' do
    cat = Cat.create!(
    :name => 'Omar'
    )
    toy = Toy.create!(
    :name => 'Lasagna',
    :cat_id => cat.id
    )
    visit '/'
    click_on 'Cats'
    click_on cat.name
    expect(page).to have_content 'Lasagna'
  end
end
