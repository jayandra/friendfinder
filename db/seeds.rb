# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |i|
	User.create({
		name: "user_#{i}",
		sex: "Male",
		school: "school_#{i}",
		highschool: "highschool_#{i}",
		city: "city_#{i}",
		photo: "",
		views: i*5,
		likes: i*2,
		email: "user#{i}@gmail.com",
		password: "password",
		password_confirmation: "password"
	})
end