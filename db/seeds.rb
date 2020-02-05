# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cow.destroy_all

Cow1 = Cow.create(name: "Stephen King", notes: "Romance", history: "Writes a lot of scary things.")
Cow2 = Cow.create(name: "Ariana Huffington", notes: "Comedy", history: "Up and comer. One to watch.")
Cow3 = Cow.create(name: "Horse Ebooks", notes: "?????", history: "Eclectic.")

User1 = User.create(name: "Mario", username: "mario_n_peach", password: "jimmy1", email: "super_mario100@gmail.com")