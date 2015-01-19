# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tag.create(name: 'angularjs')
Tag.create(name: 'mongo success!')

Post.create(
  title: 'My feelings on AngularJS', 
  date: 1.day.ago, 
  content: "I'm learning a lot of really cool things. I really like AngularJS. Ellen is a great teacher!",
  tag_names: ['angularjs']
)

Post.create(
  title: "I made an API call!",
  date: Date.today,
  content: "Holy buckets, I made an API call from my AngularJS app to my Rails app on MongoDB!",
  tag_names: ['angularjs', 'mongo success!'] 
)
