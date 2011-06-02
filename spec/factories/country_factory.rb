Factory.define :country do |f|
  f.name { Faker::Lorem.name }
end

Factory.define :country_with_regions, :parent => :country do |f|
  f.after_create do |country|
    3.times { Factory(:region, :country => country) }
  end
end
