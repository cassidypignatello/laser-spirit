# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
katie = User.create(:email => "katie@flatiron.com", :name => "Katie", :password=>"12345yyy", :password_confirmation=>"12345yyy")
avi = User.create(:email => "avi@flatiron.com", :name => "Avi", :password=>"123454yyy", :password_confirmation=>"123454yyy")
arel = User.create(:email => "arel@flatiron.com", :name => "Arel",  :password=>"12345yyx", :password_confirmation=>"12345yyx")

product = Product.create([{ title: 'Pizza', description: 'Delish', price: 3, seller_id: avi.id}, 
                          { title: 'Gyro', description: 'Yum', price: 4, seller_id: katie.id}, 
                          { title: 'Hotdog', description: 'Hmmm', price: 8, seller_id: arel.id}])

