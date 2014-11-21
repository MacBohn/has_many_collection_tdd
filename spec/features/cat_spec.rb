require 'rails_helper'
  feature 'cats' do
    scenario 'Each Cat show page should list the toys that cat owns' do

          cat = Cat.create!(
          name:"Omar"
          )

          toy = Toy.create!(
          name:"Lazer",
          cat_id:cat.id
          )

    visit "/"
    click_on "Cats"
    click_on "Omar"
    expect(page).to have_content "Lazer"



    end
  end

    
