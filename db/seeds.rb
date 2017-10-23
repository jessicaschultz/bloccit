require 'random_data'
require 'faker'
#create Users
5.times do
  User.create!(
    # name:     RandomData.random_name,
    # email:    RandomData.random_email,
    # password: RandomData.random_sentence
    name:     Faker::Name.name,
    email:    Faker::Internet.free_email(:name),
    password: Faker::Internet.password
  )
end
users = User.all

#create topics
  15.times do
    Topic.create!(
      name:        Faker::Hipster.sentence,
      description: Faker::Hipster.paragraph
    )
  end
  topics = Topic.all

 # Create Posts
 50.times do
   Post.create!(
     user:   users.sample,
     topic:  topics.sample,
     title:  Faker::Hipster.sentence,
     body:   Faker::Hipster.paragraph
   )
 end
 posts = Post.all

 # Create Comments
 100.times do
   Comment.create!(
     user: users.sample,
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end

#create an admin user
admin = User.create!(
    name:     'Admin User',
    email:    'admin@example.com',
    password: 'helloworld',
    role:     'admin'
)

#create a member
member = User.create!(
    name:     'Member User',
    email:    'member@example.com',
    password: 'helloworld'
)

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
