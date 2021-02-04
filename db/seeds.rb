# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Robot1", password: "password")
User.create(username: "Robot2", password: "password")
User.create(username: "Robot3", password: "password")
User.create(username: "Robot4", password: "password")
User.create(username: "Robot5", password: "password")
User.create(username: "Robot6", password: "password")


Message.create(user_id: 1, text: "Anyone operating a mobile coffee truck here?")
Message.create(user_id: 2, text: "This helper validates that the attribute's value is unique right")
Message.create(user_id: 3, text: "This method is only useful after validations have been run")
Message.create(user_id: 4, text: "So last week I became a first time published author and wrote a book for the hospitality industry here in Australia.")
Message.create(user_id: 5, text: "SPECIAL TIME 1PM on #roundcupchat")
Message.create(user_id: 6, text: "3pm AEST on IG")
Message.create(user_id: 4, text: "Wanna jump on? ")
Message.create(user_id: 2, text: "We wanna hear from baristas")
Message.create(user_id: 1, text: "would love to connect")