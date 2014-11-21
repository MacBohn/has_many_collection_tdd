def create_cat
  Cat.create!(
  name: 'Omar'
  )
end

def create_toy(cat)
    Toy.create!(
  name: 'Yarn Ball',
  cat_id:cat.id
  )
end
