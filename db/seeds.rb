# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creating pet sitters..."
p1 = PetSitter.create!(name: "John Doe",location:"East Village", rating: "4", img_url: "he")
p2 = PetSitter.create!(name: "Michael Haw",location:"Union Square", rating: "2", img_url: "he")
p3 = PetSitter.create!(name: "Mikal Lawe",location:"hoville", rating: "4", img_url: "")
p4 = PetSitter.create!(name: "John Doe",location:"East Village", rating: "4", img_url: "he")

puts "creating users..."
u1 = User.create!(name: "Lebron Jaymez", pet_type: 'Dog', pet_name: 'sprinkles')
u2 = User.create!(name: "Zaq", pet_type: 'Hair-less Cat', pet_name: 'feathers')
u3 = User.create!(name: "Mario", pet_type: 'Dog', pet_name: 'Luigi')
u4 = User.create!(name: "Amy Smih", pet_type: 'Dog', pet_name: 'Uzzi')
u5 = User.create!(name: "Linda Washington", pet_type: 'Dog', pet_name: 'Hamilton')


puts "creating reviews..."
r1= Review.create!(title: 'Happy camper', description:'Amazing sitter, pup always excited to go back', score:5, pet_sitter_id:p3.id, user_id:u1.id)
r2= Review.create!(title: "Don't send your pet her", description:'PLease stay away from this sitter, pup came back frightened', score:1, pet_sitter_id:p2.id, user_id: u2.id  )
r3= Review.create!(title: 'Great!!!', description:'An amazing job, very professional', score:5, pet_sitter_id:p4.id, user_id: u3.id  )
r4= Review.create!(title: 'Amazing', description:'Kind, polite, professional', score:4, pet_sitter_id:p4.id, user_id: u4.id  )
r5= Review.create!(title: 'Furever Happy', description:'Little guy seems to enjoy his time and looks like he made new friends', score:5, pet_sitter_id:p1.id, user_id: u5.id  )
