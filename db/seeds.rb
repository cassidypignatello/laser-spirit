# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

product = Product.create([{ title: 'Pizza', description: 'Delish', price: 3}, 
                          { title: 'Gyro', description: 'Yum', price: 4}, 
                          { title: 'Hotdog', description: 'Hmmm', price: 8}])