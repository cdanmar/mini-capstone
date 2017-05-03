# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rails generate model Toy name:string image:string description:string price:string

# item = ModelName.new({attribute_1: “some value”, attribute_2: “some value”})
# item.save

toy = Toy.new({name: "Gold Spinner", image: "https://goo.gl/WuWtjT", description: "For those expensive tastes", price: "1000000"})
item.save

toy = Toy.new({name: "Bike Spinner", image: "https://goo.gl/olCnOL", description: "Made out of a broken fixie bike", price: "50"})
item.save

toy = Toy.new({name: "Shuriken Spinner", image: "https://goo.gl/StT7Gr", description: "Doubles as a weapon", price: "70"})
item.save

toy = Toy.new({name: "Ball Bearing Spinner", image: "https://goo.gl/PNzszk", description: "More ball bearings for extra spin", price: "30"})
item.save

toy = Toy.new({name: "LED Spinner", image: "https://goo.gl/WuWtjT", description: "For those expensive tastes", price: "1000000"})
item.save
