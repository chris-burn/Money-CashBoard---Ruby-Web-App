require_relative './models/merchant'
require_relative './models/tag'
require_relative './models/transaction'
require_relative './models/user'

require 'pry-byebug'

merchant1 = Merchant.new({
  'name' => "Asda",
  'location' => "Garthdee, Aberdeen"
  })

merchant2 = Merchant.new({
  'name' => "Tesco",
  'location' => "Danestone, Aberdeen"
  })

merchant3 = Merchant.new({
  'name' => "B&Q",
  'location' => "Online"
  })

merchant4 = Merchant.new({
  'name' => "Dominos",
  'location' => "Online"
  })

merchant5 = Merchant.new({
  'name' => "Brewdog",
  'location' => "Merchant City, Glasgow"
  })

merchant6 = Merchant.new({
  'name' => "Amazon UK",
  'location' => "Online"
  })

merchant7 = Merchant.new({
  'name' => "Scotrail",
  'location' => "Train Station, Aberdeen"
  })

merchant8 = Merchant.new({
  'name' => "Halfords",
  'location' => "Berryden, Aberdeen"
  })

merchant9 = Merchant.new({
  'name' => "Whisky Exchange",
  'location' => "Online"
  })

merchant10 = Merchant.new({
  'name' =>  "British Airways",
  'location' => "Online"
  })

merchant11 = Merchant.new({
  'name' => "Falkirk Council",
  'location' => "West Bridge Street, Falkirk" 
  })

merchant1.save()
merchant2.save()
merchant3.save()
merchant4.save()
merchant5.save()
merchant6.save()
merchant7.save()
merchant8.save()
merchant9.save()
merchant10.save()
merchant11.save()


tag1 = Tag.new({
  'name' => "Groceries"
  })

tag2 = Tag.new({
  'name' => "Gifts"
  })

tag3 = Tag.new({
  'name' => "DIY"
  })

tag4 = Tag.new({
  'name' => "Takeaway"
  })

tag5 = Tag.new({
  'name' => "Car"
  })

tag6 = Tag.new({
  'name' => "Travel"
  })

tag7 = Tag.new({
  'name' => "Social Events"
  })

tag8 = Tag.new({
  'name' => "Bills"
  })

tag9 = Tag.new({
  'name' => "Treats"
  })

tag1.save()
tag2.save()
tag3.save()
tag4.save()
tag5.save()
tag6.save()
tag7.save()
tag8.save()
tag9.save()


transaction1 = Transaction.new({
  'value' => 30.00,
  'date_id' => "06/04/2017",
  'comment' => "Weekly shop.",
  'tag_id' => tag1.id,
  'merchant_id' => merchant2.id
  })

transaction2 = Transaction.new({
  'value' => 19.99,
  'date_id' => "06/05/2017",
  'comment' => "Replacement window wipers for car.",
  'tag_id' => tag5.id,
  'merchant_id' => merchant8.id
  })

transaction3 = Transaction.new({
  'value' => 15.50,
  'date_id' => "05/27/2017",
  'comment' => "Mid-week takeaway.",
  'tag_id' => tag4.id,
  'merchant_id' => merchant4.id
  })

transaction4 = Transaction.new({
  'value' => 50,
  'date_id' => "05/21/2017",
  'comment' => "Night out with mates.",
  'tag_id' => tag7.id,
  'merchant_id' => merchant5.id
  })

transaction5 = Transaction.new({
  'value' => 39.99,
  'date_id' => "05/20/2017",
  'comment' => "Train tickets to Glasgow.",
  'tag_id' => tag6.id,
  'merchant_id' => merchant7.id
  })

transaction6 = Transaction.new({
  'value' => 45.20,
  'date_id' => "05/30/2017",
  'comment' => "Weekly shop.",
  'tag_id' => tag1.id,
  'merchant_id' => merchant1.id
  })

transaction7 = Transaction.new({
  'value' => 40,
  'date_id' => "05/28/2017",
  'comment' => "CDs and Blu-Ray for sisters birthday.",
  'tag_id' => tag2.id,
  'merchant_id' => merchant6.id
  })

transaction8 = Transaction.new({
  'value' => 70.60,
  'date_id' => "06/01/2017",
  'comment' => "Paint for home decoration.",
  'tag_id' => tag3.id,
  'merchant_id' => merchant3.id
  })

transaction9 = Transaction.new({
  'value' => 200.20,
  'date_id' => "06/11/2017",
  'comment' => "Flights to Madrid",
  'tag_id' => tag6.id,
  'merchant_id' => merchant10.id
  })

transaction10 = Transaction.new({
  'value' => 50.99,
  'date_id' => "05/29/2017",
  'comment' => "Whisky for me!",
  'tag_id' => tag9.id,
  'merchant_id' => merchant9.id
  })

transaction11 = Transaction.new({
  'value' => 25,
  'date_id' => "06/09/2017",
  'comment' => "More pizza!",
  'tag_id' => tag4.id,
  'merchant_id' => merchant4.id
  })


transaction1.save()
transaction2.save()
transaction3.save()
transaction4.save()
transaction5.save()
transaction6.save()
transaction7.save()
transaction8.save()
transaction9.save()
transaction10.save()
transaction11.save()


user1 = User.new({
  'budget' => 700
  })

user1.save()


binding pry
nil
