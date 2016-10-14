# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

users = User.create([
  {
    first_name: "Misha",
    last_name: "LeClair",
    user_name: "MLeClair",
    email: "mishaleclair@example.com",
    password: "password"
  },
  {
    first_name: "Laura",
    last_name: "Russell",
    user_name: "LRussell",
    email: "laurarussell@example.com",
    password: "password"
  },
  {
    first_name: "Sam",
    last_name: "Darbonne",
    user_name: "SDarbonne",
    email: "samdarbonne@example.com",
    password: "password"
  },
  {
    first_name: "Nick",
    last_name: "Budig",
    user_name: "NBudig",
    email: "nickbudig@example.com",
    password: "password"
  }
])
