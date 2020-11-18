# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Pet.destroy_all
User.destroy_all


martin = User.create!(name: "martin", location: "stockholm", bio: "bla bla", email: "martin@martin.com", password: "123456")
j = User.create!(name: "j", location: "copenhagen", bio: "bla bla bla", email: "j@j.com", password: "123456")
alize = User.create!(name: "alize", location: "stockholm", bio: "bla bla", email: "alize@alize.com", password: "123456")
antje = User.create!(name: "antje", location: "stockholm", bio: "bla bla bla", email: "antje@antje.com", password: "123456")
michael= User.create!(name: "michael", location: "stockholm", bio: "bla bla", email: "michael@michael.com", password: "123456")
samad = User.create!(name: "samad", location: "copenhagen", bio: "bla bla bla", email: "samad@samad.com", password: "123456")
tom = User.create!(name: "tom", location: "stockholm", bio: "bla bla", email: "tom@tom.com", password: "123456")
victoire = User.create!(name: "victoire", location: "stockholm", bio: "bla bla bla", email: "victoire@victoire.com", password: "123456")
joao = User.create!(name: "joao", location: "stockholm", bio: "bla bla", email: "joao@joao.com", password: "123456")
lazlo = User.create!(name: "lazlo", location: "copenhagen", bio: "bla bla bla", email: "lazlo@lazlo.com", password: "123456")
ashleigh = User.create!(name: "ashleigh", location: "stockholm", bio: "bla bla", email: "ashleigh@gashleigh.com", password: "123456")
bruno = User.create!(name: "bruno", location: "lisbon", bio: "bla bla bla", email: "bruno@bruno.com", password: "123456")



file = File.open("app/assets/images/terry.jpg")
terry = Pet.new(name: "terry", species: "dog", age: 15, description: "bites", user: martin)
terry.photo.attach(io: file, filename: 'terry.jpg', content_type: 'image/jpg')
terry.save!

file = File.open("app/assets/images/cat.jpg")
zorro = Pet.new(name: "zorro", species: "cat", age: 5, description: "meows", user: j)
zorro.photo.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
zorro.save!


file = File.open("app/assets/images/dog-running.jpg")
jessy = Pet.new(name: "jessy", species: "dog", age: 15, description: "Sweet dog. Doesn't like German shepherd dogs.", user: martin)
jessy.photo.attach(io: file, filename: 'dog-running.jpg', content_type: 'image/jpg')
jessy.save!

file = File.open("app/assets/images/cat2.jpg")
brutus = Pet.new(name: "brutus", species: "cat", age: 5, description: "meows", user: antje)
brutus.photo.attach(io: file, filename: 'cat2.jpg', content_type: 'image/jpg')
brutus.save!

file = File.open("app/assets/images/dogs.jpg")
khan = Pet.new(name: "khan", species: "dog", age: 15, description: "Lazy dogs. Only needs a short round", user: martin)
khan.photo.attach(io: file, filename: 'dogs.jpg', content_type: 'image/jpg')
khan.save!


file = File.open("app/assets/images/cat2.jpg")
doro = Pet.new(name: "doro", species: "cat", age: 5, description: "meows", user: j)
doro.photo.attach(io: file, filename: 'cat2.jpg', content_type: 'image/jpg')
doro.save!

file = File.open("app/assets/images/dogs2.jpg")
hasso = Pet.new(name: "hasso", species: "dog", age: 15, description: "Loves kids. No danger to anyone.", user: martin)
hasso.photo.attach(io: file, filename: 'dogs2.jpg', content_type: 'image/jpg')
hasso.save!

file = File.open("app/assets/images/cat3.jpeg")
kitty = Pet.new(name: "kitty", species: "cat", age: 5, description: "meows", user: j)
kitty.photo.attach(io: file, filename: 'cat3.jpeg', content_type: 'image/jpg')
kitty.save!



Booking.create(start_date: "2020, 11, 9", end_date: "2020, 12, 04", user: martin, pet: doro)
Booking.create(start_date: "2020, 12, 15", end_date: "2020, 12, 19", user: j, pet: brutus)
Booking.create(start_date: "2020, 11, 19", end_date: "2020, 11, 19", user: antje, pet: jessy)
Booking.create(start_date: "2020, 12, 15", end_date: "2020, 12, 19", user: alize, pet: zorro)
Booking.create(start_date: "2020, 11, 9", end_date: "2020, 12, 04", user: martin, pet: kitty)
Booking.create(start_date: "2020, 12, 17", end_date: "2020, 12, 18", user: j, pet: terry)


