def create_cat(overrides = {})
  Cat.create!({
  name: 'Garfield'
}.merge(overrides)
  )
end


def create_toy(cat, overrides = {})
  Toy.create!(
  name: 'Lasagna',
  cat_id: cat.id
}.merge(overrides)
  )
end
