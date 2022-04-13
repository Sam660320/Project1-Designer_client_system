# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'johnsmith@gmail.com'
u2 = User.create :email => 'sallygrey@gmail.com'
puts "#{ User.count } users"


Client.destroy_all

c1 = Client.create(:name => 'Iron Man', :phone => '0426 999 378', :email => 'ironman@gmail.com', :address => 'Cliffside Dr & Birdview Ave, Malibu, CA 90265', :heard_us_from => 'Friend recommendation', :preferred_style => 'Neofuturist', :image => 'https://i.pinimg.com/564x/db/38/29/db382916e20ffe546ff6e5ae6a1b0de0.jpg')
c2 = Client.create(:name => 'Charles Windsor', :phone => '0422 333 132', :email => 'charles@gmail.com', :preferred_style => 'Neoclassical', :image => 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Prince_Charles%2C_Duke_of_Cornwall_Allan_Warren.jpg')

puts "#{Client.count} clients created."

Designer.destroy_all

d1 = Designer.create(:name => 'John Smith', :dob => '1974-02-03', :hireyear => '2003', :email => 'johnsmith@gmail.com', :phone => '0423 555 643', :address => '23 Bradley St, South Port', :image => 'https://content.instructables.com/ORIG/FCA/FF8S/KHUK9BKA/FCAFF8SKHUK9BKA.jpg?auto=webp', :award => 'Australia Good Design - 2009')
d2 = Designer.create(:name => 'Sally Grey', :dob => '1985-07-09', :hireyear => '2012', :email => 'sallygrey@gmail.com', :phone => '0433 928 456', :address => '183 St kilda Road, St kilda', :image => 'https://lumiere-a.akamaihd.net/v1/images/ct_snowwhite_upcportalreskin_20694_eb571c22.jpeg?region=0%2C0%2C330%2C330', :award => 'Prospect young designer of 2014' )

puts "#{Designer.count} designers created."

Project.destroy_all

p1 = Project.create(:name => 'Stark Mansion', :location => 'Malibu', :area => '8600', :style => 'Advanced Modern & Elegant', :start_date => '2008-05-01', :finished => true, :estimate_time_finish => '2009', :image => 'https://static.wikia.nocookie.net/marvelmovies/images/7/7c/TonyStarkMantion-IM3.png/revision/latest/scale-to-width-down/700?cb=20131127033251', :cost => '13 million')
p2 = Project.create(:name => '325 Toorak', :location =>'Melbourne', :area => '1130', :style => 'French', :start_date => '2020-02-21', :finished => false, :estimate_time_finish => '2022', :image => 'https://www.realestate.com.au/property-house-vic-toorak-138976299?sourcePage=rea%3Abuy%3Asrp-map&sourceElement=listing-tile', :cost => '1.3 million')

puts "#{Project.count} projects created."

d1.projects << p1
d2.projects << p2

c1.projects << p1
c2.projects << p2