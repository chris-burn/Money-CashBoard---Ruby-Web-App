require_relative './models/merchant'
require_relative './models/tag'
require_relative './models/transaction'
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

merchant1.save()
merchant2.save()
merchant3.save()
merchant4.save()
merchant5.save()
merchant6.save()
merchant7.save()
merchant8.save()

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

tag1.save()
tag2.save()
tag3.save()
tag4.save()
tag5.save()
tag6.save()
tag7.save()


transaction1 = Transaction.new({
  'value' => 30,
  'comment' => "Weekly shop.",
  'tag_id' => 1,
  'merchant_id' => 2
  })

transaction2 = Transaction.new({
  'value' => 20,
  'comment' => "Replacement window wipers for car.",
  'tag_id' => 5,
  'merchant_id' => 8
  })

transaction3 = Transaction.new({
  'value' => 15,
  'comment' => "Mid-week takeaway.",
  'tag_id' => 4,
  'merchant_id' => 4
  })

transaction4 = Transaction.new({
  'value' => 40,
  'comment' => "Night out with mates.",
  'tag_id' => 7,
  'merchant_id' => 5
  })

transaction5 = Transaction.new({
  'value' => 50,
  'comment' => "Train tickets to Glasgow.",
  'tag_id' => 6,
  'merchant_id' => 7
  })

transaction6 = Transaction.new({
  'value' => 45,
  'comment' => "Weekly shop.",
  'tag_id' => 1,
  'merchant_id' => 1
  })

transaction7 = Transaction.new({
  'value' => 50,
  'comment' => "CDs and Blu-Ray for sisters birthday.",
  'tag_id' => 6,
  'merchant_id' => 7
  })

transaction8 = Transaction.new({
  'value' => 80,
  'comment' => "Paint for home decoration.",
  'tag_id' => 3,
  'merchant_id' => 3
  })

transaction1.save()
transaction2.save()
transaction3.save()
transaction4.save()
transaction5.save()
transaction6.save()
transaction7.save()
transaction8.save()


binding pry
nil
