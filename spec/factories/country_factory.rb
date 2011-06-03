Factory.define :country do |f|
  f.name { Faker::Lorem.words(3) }
end

Factory.define :country_with_regions, :parent => :country do |f|
  f.after_create do |country|
    3.times { Factory(:region, :country => country) }
  end
end

Factory.define :country_with_locations, :parent => :country_with_regions do |f|
  f.after_create do |country|
    country.regions.each {|r| Factory(:location, :region => r)}
  end
end
