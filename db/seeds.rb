# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
user = User.new(email: 'oliver@futureworkz.com', password: '123123123', name: 'Oliver')
user.save!

Post.destroy_all
content = "Maria Sharapova says she is 'determined to fight back' after testing positive for meldonium. <br/>
          In a Facebook post railing against 'distorted and exaggerated' reporting, she denied taking meldonium every day and missing five warnings that the drug was about to be banned. <br/>
          She also criticised the tennis authorities for making the relevant information 'too hard to find'."
Post.create(title: "Maria Sharapova 'determined to fight back' after failed drugs test", content: content)