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
end
