# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if User.find_by(email: "franco.viola@live.com") == nil
	User.create(name: "Franco Viola", email: "franco.viola@live.com")
end

if User.find_by(email: "aettinger94@gmail.com") == nil
	User.create(name: "Andrew Ettinger", email: "aettinger94@gmail.com")
end

if User.find_by(email: "marco.viola@live.com") == nil
	User.create(name: "Marco Viola", email: "marco.viola@live.com")
end
