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
product = Product.create([{ 
    title: "Best Pizza", 
    description: "Straight up New York City slices. Love the grandma slice and the white pizza, and the most ballin' delivery man this side of the east river.", 
    price: 3, 
    image_url: "http://slice.seriouseats.com/Images/20100615-Pauli-Gee-Regina.jpg",
    seller_id: avi.id
  }, 
  { 
    title: "Gyro", 
    description: "Superb gyros in Midtown where the meat is tender and flavorful. Order your onions sauteed or crisp, and top it off with their white and red sauces.  The line may be long, but it goes fast and it will be the best $5 you spend in quite some time.", 
    price: 4, 
    image_url: "http://www.thegyrocompany.com/images/sidebar-whatsagyro.jpg",
    seller_id: katie.id
  }, 
  { title: "Hotdog", 
    description: "Jackson Heights spot serves up its dogs Colombian-style, meaning that they're massive, LOADED with a million toppings and drowned in cheese and sauces. Perrada de Chalo will kill you with these toppings. Order an Iraqui dog, which comes with ketchup, mayonnaise, pineapple sauce, potato chips and hardboiled eggs; or opt for a Mixto, which comes wrapped in bacon and smothered with cheese, mayonnaise, ketchup, Russian dressing, pineapple sauce, ketchup and, of course, crushed potato chips. Is your cholesterol supposed to be under 200?", 
    price: 8, 
    image_url: "http://gothamist.com/attachments/nyc_rebeccaf/070114_perrado.jpg",
    seller_id: arel.id
  }])

