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


martin = User.create!(name: "martin", location: "Slottsbacken 1, 111 30 Stockholm, Sweden", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", email: "martin@martin.com", password: "123456")
j = User.create!(name: "j", location: "Holmbladsgade 94, Copenhagen Municipality, denmark", bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ", email: "j@j.com", password: "123456")
alize = User.create!(name: "alize", location: "99 Yulgok-ro, Waryong-dong, Jongno-gu, Seoul, South Korea", bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ", email: "alize@alize.com", password: "123456")
antje = User.create!(name: "antje", location: "Museumsplatz 1, 45128 Essen, Germany", bio: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", email: "antje@antje.com", password: "123456")
michael= User.create!(name: "michael", location: "3251 S Miami Ave, Miami, FL 33129, United States", bio: "Lorem ipsum dolor sit amet.", email: "michael@michael.com", password: "123456")
samad = User.create!(name: "samad", location: "St Katharine's & Wapping, London EC3N 4AB, United Kingdom", bio: "Lorem ipsum dolor sit amet.", email: "samad@samad.com", password: "123456")
tom = User.create!(name: "tom", location: "44-46 Oxford Castle, Oxford OX1 1AY, United Kingdom", bio: "Lorem ipsum dolor sit amet.", email: "tom@tom.com", password: "123456")
victoire = User.create!(name: "victoire", location: "3 Rue de l'Hermitage, 44100 Nantes, France", bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", email: "victoire@victoire.com", password: "123456")
joao = User.create!(name: "joao", location: "Av. da Boavista 604-610, 4149-071 Porto, Portugal", bio: "Lorem ipsum dolor sit amet", email: "joao@joao.com", password: "123456")
lazlo = User.create!(name: "lazlo", location: "Museumstrasse 2, 8001 Zürich, Switzerland", bio: "Lorem ipsum dolor sit amet", email: "lazlo@lazlo.com", password: "123456")
ashleigh = User.create!(name: "ashleigh", location: "Westminster, London SW1A 0AA, United Kingdom", bio: "Lorem ipsum dolor sit amet", email: "ashleigh@gashleigh.com", password: "123456")
bruno = User.create!(name: "bruno", location: "46 Rua da Boavista, Lisbon, Portugal", bio: "Lorem ipsum dolor sit amet", email: "bruno@bruno.com", password: "123456")
vasil = User.create!(name: "vasil", location: "pl. 'Sveti Aleksandar Nevski', 1000 Sofia Center, Sofia, Bulgaria", bio: "Lorem ipsum dolor sit amet", email: "vasil@vasil.com", password: "123456")


file = File.open("app/assets/images/terry.jpg")
terry = Pet.new(name: "Terry", species: "dog", age: 15, description: "Terry loves apples and bringing sticks of any size home.", location: "Museumsplatz 1, 45128 Essen, Germany", user: antje)
terry.photo.attach(io: file, filename: 'terry.jpg', content_type: 'image/jpg')
terry.save!

file = File.open("app/assets/images/cat.jpg")
zorro = Pet.new(name: "Zorro", species: "cat", age: 5, description: "meows", location: "Holmbladsgade 94, Copenhagen Municipality, denmark", user: j)
zorro.photo.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
zorro.save!


file = File.open("app/assets/images/dogs.jpg")
jessy = Pet.new(name: "Jessy", species: "dog", age: 15, description: "Sweet dog. Doesn't like German shepherd dogs.",location: "Slottsbacken 1, 111 30 Stockholm, Sweden", user: martin)
jessy.photo.attach(io: file, filename: 'dogs.jpg', content_type: 'image/jpg')
jessy.save!

file = File.open("app/assets/images/cat2.jpg")
brutus = Pet.new(name: "Brutus", species: "cat", age: 5, description: "Be careful. He doesn't look like it but he eats humans.",location: "Slottsbacken 1, 111 30 Stockholm, Sweden", user: martin)
brutus.photo.attach(io: file, filename: 'cat2.jpg', content_type: 'image/jpg')
brutus.save!

file = File.open("app/assets/images/lazy-dog.jpg")
khan = Pet.new(name: "Khan", species: "dog", age: 15, description: "Lazy dog. Only needs a short round once a day.",location: "99 Yulgok-ro, Waryong-dong, Jongno-gu, Seoul, South Korea", user: alize)
khan.photo.attach(io: file, filename: 'lazy-dog.jpg', content_type: 'image/jpg')
khan.save!


file = File.open("app/assets/images/cats.jpg")
doro = Pet.new(name: "Doro", species: "cat", age: 5, description: "Very shy cat. Don't take it personally if she only shows up for food once you left. She's like that.", location: "Holmbladsgade 94, Copenhagen Municipality, denmark", user: j)
doro.photo.attach(io: file, filename: 'cats.jpg', content_type: 'image/jpg')
doro.save!

file = File.open("app/assets/images/dogs2.jpg")
hasso = Pet.new(name: "Hasso", species: "dog", age: 15, description: "Loves kids. No danger to anyone.", location: "Museumsplatz 1, 45128 Essen, Germany", user: antje)
hasso.photo.attach(io: file, filename: 'dogs2.jpg', content_type: 'image/jpg')
hasso.save!

file = File.open("app/assets/images/cat3.jpg")
kitty = Pet.new(name: "Kitty", species: "cat", age: 5, description: "Loves human company. Would be great if you have some time at hand to spend with her in our absence.", location: "Holmbladsgade 94, Copenhagen Municipality, denmark", user: j)
kitty.photo.attach(io: file, filename: 'cat3.jpg', content_type: 'image/jpg')
kitty.save!



Booking.create(start_date: "2020, 11, 9", end_date: "2020, 12, 04", user: martin, pet: doro)
Booking.create(start_date: "2020, 12, 15", end_date: "2020, 12, 19", user: j, pet: brutus)
Booking.create(start_date: "2020, 11, 19", end_date: "2020, 11, 19", user: antje, pet: jessy)
Booking.create(start_date: "2020, 12, 15", end_date: "2020, 12, 19", user: alize, pet: zorro)
Booking.create(start_date: "2020, 11, 9", end_date: "2020, 12, 04", user: martin, pet: kitty)
Booking.create(start_date: "2020, 12, 17", end_date: "2020, 12, 18", user: j, pet: terry)


