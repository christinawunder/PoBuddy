# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Day.destroy_all!
User.destroy_all!

nikos = User.create(email: "nicolas.agathos@gmail.com", password: "123456", age: 26, admin: true, name: "Sally")
Day.create!(date: Date.today, bleeding: 1, bad_mood: 3, head_pain: 2, abdominal_pain: 2, breast_pain: 1, user: nikos)
Day.create!(date: Date.today - 1, bleeding: 3, bad_mood: 3, head_pain: 4, abdominal_pain: 4, breast_pain: 2, user: nikos)
Day.create!(date: Date.today - 2, bleeding: 4, bad_mood: 1, head_pain: 3, abdominal_pain: 1, breast_pain: 3, user: nikos)
