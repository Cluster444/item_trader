Factory.sequence :email do |n|
  "user-#{n}@example.com"
end

Factory.define :user do |f|
  f.email { Factory.next :email }
  f.password '123456789'
  f.password_confirmation {|proxy| proxy.password}
end

Factory.define :user_with_location, :parent => :user do |f|
  f.location { Factory(:location) }
end
