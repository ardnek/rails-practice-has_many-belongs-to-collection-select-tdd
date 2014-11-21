require 'rails_helper'

feature 'Toys' do
  scenario 'User can see list of cats and their toys on toys index page / Toy index page should list the cat that owns each of the toys listed' do
    cat = create_cat
    toy = create_toy(cat)
    visit '/'
    click_on 'Toys'
    expect(page).to have_content(toy.name)
    expect(page).to have_content(cat.name)
  end

  scenario 'User can create a new cats toy' do
    cat = create_cat
    visit toys_path
    click_on 'New Toy'
    fill_in 'Name', with: 'Cole Slaw'
    select cat.name, from: 'toy[cat_id]'
    click_on 'Create Toy'
    expect(page).to have_content('Cole Slaw')
    expect(page).to have_content(cat.name)
  end

  scenario 'Toy show page should list the cat that owns that toy (toys are not shared) / Toy new page should create a new toy and cat ownership and list it on the index' do
    cat = create_cat
    toy = create_toy(cat)
    visit toys_path
    click_on toy.name
    expect(page).to have_content(toy.name)
    expect(page).to have_content(cat.name)
  end
end
