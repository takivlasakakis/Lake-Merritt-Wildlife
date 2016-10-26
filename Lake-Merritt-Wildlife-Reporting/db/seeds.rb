# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'

10.times do
  User.create(
    username: FFaker::Internet.user_name,
    password: FFaker::Internet.password,
    email: FFaker::Internet.safe_email,
  )
end

20.times do
  Post.create(
    user_id: rand(1..10),
    title: FFaker::HipsterIpsum.phrase,
    content: FFaker::HipsterIpsum.paragraph
  )
end

30.times do
  Comment.create(
    user_id: rand(1..10),
    author: FFaker::Name.name,
    content: FFaker::HipsterIpsum.paragraph,
  )
end
