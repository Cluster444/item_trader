Factory.define :location do |f|
  f.name { Faker::Lorem.name }
  f.region { Factory(:region) }
end
