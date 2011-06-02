Factory.define :region do |f|
  f.name { Faker::Lorem.name }
  f.country { Factory(:country) }
end
