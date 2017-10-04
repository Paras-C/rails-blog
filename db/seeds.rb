# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p1 = Post.create!(username: "Billy Bob", title: "How to make Beer", body: "asdfghjkl")
p2 = Post.create!(username: "Bobby Bill", title: "How to Beer Make", body: "lkjhgfdsa")

Comment.create!(commenter_name: "Jack", comment_body: "This is lame", post_id: p1.id)
Comment.create!(commenter_name: "Jill", comment_body: "This is cool", post_id: p2.id)




