require 'rails_helper'
  feature 'cats' do
    scenario 'Each Cat show page should list the toys that cat owns' do

          cat = create_cat
          other_cat =create_cat(name: "Awesome Kitty")

          toy = create_toy(other_cat)

    visit "/"
    click_on "Cats"
    click_on other_cat.name
    expect(page).to have_content toy.name



    end
  end
