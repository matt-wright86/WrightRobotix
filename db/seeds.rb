5.times do
  User.create first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              email: Faker::Internet.email,
              password: "12345678"
end

12.times do
  Product.create name: Faker::App.name,
                 photo: Faker::Avatar.image,
                 description: Faker::Lorem.sentence,
                 price: rand(2000..10000)
end

User.create first_name: "Matthew",
            last_name: "Wright",
            email: "matt@gmail.com",
            password: "123"
