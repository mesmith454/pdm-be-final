# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.reset_column_information
User.delete_all

# User.create!({username: "megan", password: "kittens"})
# User.create!([{username: "KlingonOpus", password:"qapla"}])
# User.create!([{username: "leftshoe", password: "rightshoe"}])

Campaign.create!([
    {
        title: "Nothing Ado About Much",
        party: "Three rusty spoons",
        level: "5",
        c_notes: "We're going on a trip in our favorite rocket ship",
        dm_notes: "What assholes.",
        user_id: 1
    },
])

# Campaign.create!([
#     {
#         title: "Nothing",
#         party: "rusty spoons",
#         level: "5",
#         c_notes: "favorite rocket ship",
#         dm_notes: "What assholes.",
#         user_id: 5
#     },
# ])

# Campaign.create!([
#     {
#         title: "Goodbye",
#         party: "TAssholes",
#         level: "5",
#         c_notes: "I'll see you all",
#         dm_notes: "in therapy.",
#         user_id: 5
#     },
# ])
