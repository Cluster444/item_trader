Factory.define :region do |f|
  f.name { Faker::Lorem.name }
  f.country { Factory(:country) }
end

Factory.define :region_with_locations, :parent => :region do |f|
  f.after_create do |region|
    3.times { Factory(:location, :region => region) }
  end
end
