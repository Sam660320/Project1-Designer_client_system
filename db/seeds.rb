# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'johnsmith@gmail.com', :password => 'chicken'
u2 = User.create :email => 'sallygrey@gmail.com', :password => 'chicken'
puts "#{ User.count } users"


Client.destroy_all

c1 = Client.create(:name => 'Iron Man', :phone => '0426 999 378', :email => 'ironman@gmail.com', :address => 'Cliffside Dr & Birdview Ave, Malibu, CA 90265', :heard_us_from => 'Friend recommendation', :preferred_style => 'Neofuturist', :image => 'https://i.pinimg.com/564x/db/38/29/db382916e20ffe546ff6e5ae6a1b0de0.jpg')
c2 = Client.create(:name => 'Charles Windsor', :phone => '0422 333 132', :email => 'charles@gmail.com', :preferred_style => 'Neoclassical', :image => 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Prince_Charles%2C_Duke_of_Cornwall_Allan_Warren.jpg')

puts "#{Client.count} clients created."

Designer.destroy_all

d1 = Designer.create(:name => 'John Smith', :dob => '1974-02-03', :hireyear => '2003', :email => 'johnsmith@gmail.com', :phone => '0423 555 643', :address => '23 Bradley St, South Port', :image => '/assets/designers/d1.png', :award => 'Australia Good Design - 2009')
d2 = Designer.create(:name => 'William Hugh', :dob => '1993-09-13', :hireyear => '2015', :email => 'william@gmail.com', :phone => '0466 041 698', :address => '3 Eughton Street, Portsea', :image => '/assets/designers/d3.webp', :award => 'Best portsea Designer - 2019')
d3 = Designer.create(:name => 'Sally Grey', :dob => '1988-07-09', :hireyear => '2014', :email => 'sallygrey@gmail.com', :phone => '0433 928 456', :address => '183 St kilda Road, St kilda', :image => '/assets/designers/d4.webp', :award => 'Prospect young designer of 2015' )
d4 = Designer.create(:name => 'Alex Jordan', :dob => '1974-01-15', :hireyear => '2008', :email => 'alexj@gmail.com', :phone => '0405 555 456', :address => '68 Sunberry St, Mountain Top', :image => '/assets/designers/d5.jpeg', :award => 'New South Wales Best Designer Of Yhe Uear - 2014')

puts "#{Designer.count} designers created."

Project.destroy_all

p1 = Project.create(:name => 'Coastal Retreat', :location => 'Malibu', :area => '1364', :style => 'Modern', :start_date => '2018-05-01', :finished => true, :image => '/assets/projects/project01/p1.jpeg', :cost => '1.2 million')
p2 = Project.create(:name => 'Surfrider Ranch', :location =>'San Diego, California', :area => '2360', :style => 'Modern', :start_date => '2019-07-30', :finished => false, :estimate_time_finish => '2022', :image => '/assets/projects/project02/p1.jpeg', :cost => '2.3 million')
p3 = Project.create(:name => 'Pixel', :location =>'Malaga, Spain', :area => '1179', :style => 'Modern', :start_date => '2017-09-04', :finished => true, :image => '/assets/projects/project03/p1.jpeg', :cost => '2.8 million')
p4 = Project.create(:name => 'Open House', :location =>'Bel Air, California', :area => '1024', :style => 'Modern', :start_date => '2019-05-21', :finished => true, :image => '/assets/projects/project04/p2.jpeg', :cost => '1.6 million')
p5 = Project.create(:name => 'Westmount Residence', :location =>'West Hollywood, California', :area => '765', :style => 'Modern', :start_date => '2020-04-11', :finished => true, :image => '/assets/projects/project05/p1.jpeg', :cost => '1.9 million')
p6 = Project.create(:name => 'Forest Knoll', :location =>'Hollywood Hills, California', :area => '929', :style => 'Modern', :start_date => '2020-02-21', :finished => true, :image => '/assets/background/architecture_06.jpeg', :cost => '2.8 million')

puts "#{Project.count} projects created."

d1.projects << p1
d2.projects << p2

c1.projects << p1
c2.projects << p2