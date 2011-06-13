# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
include Faker

User.delete_all
Post.delete_all

user =  User.create({
  :email => 'dhanesh.purohit@gmail.com', 
  :password => 'Password1'
})
if user.save
  10.times do |n|
    post = Post.create({
      :title => Faker::Lorem.words(6),
      :content => Faker::Lorem.sentences(10),
      :user_id => user.id
    })
    puts "Post #{n} created"
    #puts "Error creating post no. #{n}: #{user.posts.errors}" if user.posts.errors.present?
  end
end
