Author.destroy_all
Comment.destroy_all
Post.destroy_all
Post.destroy_all
UserPost.destroy_all
UserProfile.destroy_all
User.destroy_all


puts "🧚‍♂️ a tale"

author1 = Author.create(name: "Leeroy Jenkins")
author2 = Author.create(name: Faker::Name.unique.name, location: Faker::Address.city)
author3 = Author.create(name: Faker::Name.unique.name, location: Faker::Address.city)

user1 = User.create(name: Faker::Lorem.word, email: Faker::Internet.email)
user2 = User.create(name: Faker::Lorem.word, email: Faker::Internet.email)
user3 = User.create(name: Faker::Lorem.word, email: Faker::Internet.email)


UserProfile.create(user_id: user1.id, username: "ljenk", email: "ljenk@aol.com", bio: "a very dated reference")

Post.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, author_id: author1.id, user_id: user1.id)
Post.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, author_id: author2.id, user_id: user2.id)

userpost1 = UserPost.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: user1.id, comment_id: comment1.id)
userpost2 = UserPost.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: user2.id, comment_id: comment2.id)


Comment.create(user_id: user1.id, user_post_id: user_post1.id)
Comment.create(user_id: user.id, user_post_id: used_post2.id)

puts  "🧚‍♂️ a tale is already Told"



