def create_cat(overrides = {})
  Cat.create!({
  name: 'James'
}.merge(overrides)
  )
end

def create_toy(cat, overrides = {})
    Toy.create!({
  name: 'Yarn Ball',
  cat_id:cat.id
}.merge(overrides)
  )
end
