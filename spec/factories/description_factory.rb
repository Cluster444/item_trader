Factory.define :description do |f|
  f.body { Faker::Lorem.paragraph(1) }
  f.describable { Factory(:country) } # Using country because it's fast to create
end
