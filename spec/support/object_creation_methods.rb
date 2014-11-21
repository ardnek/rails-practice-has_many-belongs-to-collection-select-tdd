def create_cat
  Cat.create!(
  name: 'Garfield'
  )
end

def create_toy(cat)
  Toy.create!(
  name: 'Lasagna',
  cat_id: cat.id
  )
end
