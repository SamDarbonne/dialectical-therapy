# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
User.destroy_all

users = User.create([
  {
    first_name: "Misha",
    last_name: "LeClair",
    user_name: "MLeClair",
    email: "mishaleclair@example.com",
    password: "password",
    professional_id: 5
  },
  {
    first_name: "Laura",
    last_name: "Russell",
    user_name: "LRussell",
    email: "laurarussell@example.com",
    password: "password",
    professional_id: 5
  },
  {
    first_name: "Sam",
    last_name: "Darbonne",
    user_name: "SmamHamwich",
    email: "samdarbonne@example.com",
    password: "password",
    professional_id: 5
  },
  {
    first_name: "Nick",
    last_name: "Budig",
    user_name: "NBudig",
    email: "nickbudig@example.com",
    password: "password",
    professional_id: 5
  },
  {
    first_name: "Carl",
    last_name: "Jung",
    user_name: "CJ",
    email: "Carl@example.com",
    password: "password",
    is_prof: true
  },
  {
    first_name: "Doc",
    last_name: "Doctor",
    user_name: "Doc",
    email: "docdoctor@example.com",
    password: "password",
    is_prof: true
  }
])

events = Event.create([
  {
    behavior: "binged and purged",
    trigger: "arguement with boyfriend",
    before: 8,
    before_notes: "i was scared",
    after: 9,
    after_notes: "i was ashamed",
    distraction: false,
    soothing: true,
    improving: false,
    helpful: "i calmed down",
    hurtful: "i felt worse about myself after",
    reflection: "i wish i took a walk after the argument instead",
    victory: "i told my boyfriend how i felt",
    user_id: 1
  },
  {
    behavior: "I ate a hot dog",
    trigger: "Saw a man with a hot dog",
    before: 8,
    before_notes: "I really wanted a hot dog like that man was eating",
    after: 9,
    after_notes: "I was full from the hot dog that I ate, and ashamed of my hot dog eating.",
    distraction: false,
    soothing: true,
    improving: false,
    helpful: "It made me feel good to eat a hot dog, as I love hot dogs.",
    hurtful: "I felt like I had no control over my life because every time I see someone else with a hot dog I just can not help myself from getting a hot dog.",
    reflection: "My boss was really upset at me for being an hour late to work because I was waiting for my BART train to work when I saw the man with the hot dog.",
    victory: "I walked the two blocks to the hot dog store instead of calling an Uber.",
    user_id: 3
  }
  ])
