require 'rails_helper'
feature 'Toys' do
  scenario 'User can see list of cats and toys on index page' do
    cat = Cat.create!(
      name:"Omar"
    )
    toy = Toy.create!(
    name: "Cole Slaw",
    cat_id: cat.id
    )

    visit '/'
    click_on 'Toys'
    expect(page).to have_content(toy.name)
    expect(page).to have_content(cat.name)
  end

  scenario 'User can create a new cats toy' do
    cat = Cat.create!(
      name:"Omar"
    )
    visit toys_path
    click_on 'New Toy'
    fill_in 'Name', with: 'Cole Slaw'
    select cat.name, from: 'toy[cat_id]'
    click_on 'Create Toy'
    expect(page).to have_content('Cole Slaw')
    expect(page).to have_content('Omar')
  end
end
