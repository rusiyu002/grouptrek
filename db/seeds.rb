usernames = ["serena", "kosuke", "lynn"]

usernames.each do |username|
  user = User.create
  user.username = username
  user.email = "#{username}@example.com"
  user.password = "12341234"
  user.save
end

puts "There are now #{User.count} users in the database."

trek_infos = [
  {
    :image => "https://tahoesouth.com/wp-content/uploads/2016/05/Lake-Tahoe-Accommodations350x233.jpg",
    :destination => "Lake Tahoe"
  },
  {
    :image => "http://e.peruthisweek.e3.pe//ima/0/0/0/4/6/46236/624x468.jpg",
    :destination => "Machu Picchu"
  },
  {
    :image => "http://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Fire_breathing_2_Luc_Viatour.jpg/1280px-Fire_breathing_2_Luc_Viatour.jpg",
    :destination => "Jaipur"
  },
  {
    :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/GoldenGateBridge-001.jpg/1920px-GoldenGateBridge-001.jpg",
    :destination => "San Francisco"
  },
  {
    :image => "http://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Mostar_Old_Town_Panorama_2007.jpg/1280px-Mostar_Old_Town_Panorama_2007.jpg",
    :destination => "Mostar"
  },
  {
    :image => "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Biandintz_eta_zaldiak_-_modified2.jpg/1280px-Biandintz_eta_zaldiak_-_modified2.jpg",
    :destination => "Biandintz"
  }
]

users = User.all

users.each do |user|
  treks_infos.each do |treks_info|
    trek = Trek.new(trek_info)
    trek.user_id = trek.id
    trek.save
  end
end

puts "There are now #{Trek.count} treks in the database."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
