Factory.define :item do |f|
  f.inventory { Factory(:inventory) }
  f.title { Faker::Lorem.words(5) }
end
