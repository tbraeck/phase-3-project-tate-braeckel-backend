puts "🌱 Seeding things..."

# Seed your database here
# User.create(name: "Brooke", password: "password")
# User.create(name: "Bob", password: "1234")
# User.create(name: "David", password: "watermelon")


# Drawing.destroy_all


Subject.create!([{
  name: "Art",
 description: "blach blah"
},
{
  name: "Language Arts",
  description: "blach blah"
},
{
  name: "Science",
  description: "blach blah"
 
},
{
  name: "Theatre",
  description: "blach blah"

},
{
  name: "Drama",
  description: "blach blah"
 
}
])


                                                                                                                         

                        Resource.create!([
                          {
                            name: "the thingy resource",
                            description: "blah blah blah",
                            url: "www.faker.com",
                           
                          },
                          {
                            name: "the thingy resource",
                            description: "blah blah blah",
                            url: "www.faker.com",
                           
                          }, {
                            name: "the thingy resource",
                            description: "blah blah blah",
                            url: "www.faker.com",
                           
                          }, {
                            name: "the thingy resource",
                            description: "blah blah blah",
                            url: "www.faker.com",
                           
                          }
                        ])             

puts "✅ Done seeding!"
