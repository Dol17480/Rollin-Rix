require( 'pry-byebug' )
require_relative( 'models/bike' )

bike1 = Bike.new({'category' => 'Mens', 'type' => 'Road', 'brand_name' => 'Specialized', 'model' => 'Allez', 'colour' => 'red/black', 'size' => 'L', 'price' => 750.00})
bike1.save()
bike2 = Bike.new({'category' => 'Mens', 'type' => 'Road', 'brand_name' => 'Specialized', 'model' => 'Allez', 'colour' => 'red/black', 'size' => 'L', 'price' => 750.00})
bike2.save()
bike3 = Bike.new({'category' => 'Mens', 'type' => 'Road', 'brand_name' => 'Specialized', 'model' => 'Allez', 'colour' => 'red/white', 'size' => 'M', 'price' => 750.00})
bike3.save()
bike4 = Bike.new({'category' => 'Mens', 'type' => 'Road', 'brand_name' => 'Giant', 'model' => 'Defy', 'colour' => 'white/red', 'size' => 'L', 'price' => 650.00})
bike4.save()
bike5 = Bike.new({'category' => 'Mens', 'type' => 'Road', 'brand_name' => 'Giant', 'model' => 'Defy', 'colour' => 'white/red', 'size' => 'L', 'price' => 650.00})
bike5.save()
bike6 = Bike.new({'category' => 'Mens', 'type' => 'Road', 'brand_name' => 'Giant', 'model' => 'Defy', 'colour' => 'blue/black', 'size' => 'M', 'price' => 650.00})
bike6.save()
bike7 = Bike.new({'category' => 'Mens', 'type' => 'Road', 'brand_name' => 'Pinarello', 'model' => 'Dogma', 'colour' => 'red/blue', 'size' => 'L', 'price' => 8000.00})
bike7.save()
bike8= Bike.new({'category' => 'Mens','type' => 'Road', 'brand_name' => 'Ridley', 'model' => 'Fenix', 'colour' => 'red/black', 'size' => 'L', 'price' => 2500.00})
bike8.save()
bike9 = Bike.new({'category' => 'Mens','type' => 'Road', 'brand_name' => 'Ridley', 'model' => 'Fenix', 'colour' => 'red/white', 'size' => 'L', 'price' => 2500.00})
bike9.save()
bike10 = Bike.new({'category' => 'Mens','type' => 'Hybrid', 'brand_name' => 'Specialized', 'model' => 'Crosstrail', 'colour' => 'black/red', 'size' => 'L', 'price' => 500.00})
bike10.save()
bike11 = Bike.new({'category' => 'Mens','type' => 'Hybrid', 'brand_name' => 'Specialized', 'model' => 'Crosstrail', 'colour' => 'red/black', 'size' => 'L', 'price' => 750.00})
bike11.save()
bike12 = Bike.new({'category' => 'Mens','type' => 'Hybrid', 'brand_name' => 'Whyte', 'model' => 'Whitechapel', 'colour' => 'grey', 'size' => 'L', 'price' => 500.00})
bike12.save()
bike13 = Bike.new({'category' => 'Mens','type' => 'Hybrid', 'brand_name' => 'Whyte', 'model' => 'Whitechapel', 'colour' => 'grey', 'size' => 'L', 'price' => 500.00})
bike13.save()
bike14 = Bike.new({'category' => 'Mens','type' => 'Hybrid', 'brand_name' => 'Whyte', 'model' => 'Whitechapel', 'colour' => 'grey', 'size' => 'M', 'price' => 500.00})
bike14.save()
bike15 = Bike.new({'category' => 'Mens', 'type' => 'Mountain', 'brand_name' => 'Specialized', 'model' => 'Rockhopper', 'colour' => 'red/black', 'size' => 'L', 'price' => 750.00})
bike15.save()
bike16 = Bike.new({'category' => 'Mens', 'type' => 'Mountain', 'brand_name' => 'Specialized', 'model' => 'Stumpjumper', 'colour' => 'red/black', 'size' => 'L', 'price' => 2600.00})
bike16.save()
bike17 = Bike.new({'category' => 'Mens', 'type' => 'Mountain', 'brand_name' => 'Specialized', 'model' => 'Rockhopper', 'colour' => 'red/white', 'size' => 'M', 'price' => 750.00})
bike17.save()
bike18 = Bike.new({'category' => 'Mens', 'type' => 'Mountain', 'brand_name' => 'Santa Cruz', 'model' => 'V10', 'colour' => 'orange', 'size' => 'M', 'price' => 7500.00})
bike18.save()
bike19 = Bike.new({'category' => 'Mens', 'type' => 'Mountain', 'brand_name' => 'Ghost', 'model' => 'Kato', 'colour' => 'red/white', 'size' => 'L', 'price' => 400.00})
bike19.save()
bike20 = Bike.new({'category' => 'Mens', 'type' => 'Mountain', 'brand_name' => 'Ghost', 'model' => 'Kato', 'colour' => 'red/black', 'size' => 'M', 'price' => 400.00})
bike20.save()
bike21 = Bike.new({'category' => 'Womens', 'type' => 'Road', 'brand_name' => 'Giant', 'model' => 'Defy', 'colour' => 'white/red', 'size' => 'L', 'price' => 650.00})
bike21.save()
bike22 = Bike.new({'category' => 'Womens', 'type' => 'Road', 'brand_name' => 'Giant', 'model' => 'Defy', 'colour' => 'white/red', 'size' => 'M', 'price' => 650.00})
bike22.save()
bike23 = Bike.new({'category' => 'Womens', 'type' => 'Road', 'brand_name' => 'Giant', 'model' => 'Defy', 'colour' => 'blue/black', 'size' => 'M', 'price' => 650.00})
bike23.save()
bike24 = Bike.new({'category' => 'Womens', 'type' => 'Road', 'brand_name' => 'Specialized', 'model' => 'Allez', 'colour' => 'red/blue', 'size' => 'M', 'price' => 600.00})
bike24.save()
bike25= Bike.new({'category' => 'Womens','type' => 'Road', 'brand_name' => 'Ridley', 'model' => 'Fenix', 'colour' => 'red/black', 'size' => 'L', 'price' => 2500.00})
bike25.save()
bike26 = Bike.new({'category' => 'Womens','type' => 'Road', 'brand_name' => 'Ridley', 'model' => 'Fenix', 'colour' => 'red/white', 'size' => 'M', 'price' => 2500.00})
bike26.save()
bike27 = Bike.new({'category' => 'Womens','type' => 'Hybrid', 'brand_name' => 'Specialized', 'model' => 'Crosstrail', 'colour' => 'black/red', 'size' => 'M', 'price' => 500.00})
bike27.save()
bike28 = Bike.new({'category' => 'Womens','type' => 'Hybrid', 'brand_name' => 'Specialized', 'model' => 'Crosstrail', 'colour' => 'red/black', 'size' => 'L', 'price' => 750.00})
bike28.save()
bike29 = Bike.new({'category' => 'Womens','type' => 'Hybrid', 'brand_name' => 'Whyte', 'model' => 'Whitechapel', 'colour' => 'grey', 'size' => 'L', 'price' => 500.00})
bike29.save()
bike30 = Bike.new({'category' => 'Womens','type' => 'Hybrid', 'brand_name' => 'Whyte', 'model' => 'Whitechapel', 'colour' => 'grey', 'size' => 'L', 'price' => 500.00})
bike30.save()
bike31 = Bike.new({'category' => 'Womens','type' => 'Hybrid', 'brand_name' => 'Whyte', 'model' => 'Whitechapel', 'colour' => 'grey', 'size' => 'M', 'price' => 500.00})
bike31.save()
bike32 = Bike.new({'category' => 'Womens', 'type' => 'Mountain', 'brand_name' => 'Ghost', 'model' => 'Kato', 'colour' => 'red/white', 'size' => 'L', 'price' => 400.00})
bike32.save()
bike33 = Bike.new({'category' => 'Womens', 'type' => 'Mountain', 'brand_name' => 'Ghost', 'model' => 'Kato', 'colour' => 'red/black', 'size' => 'M', 'price' => 400.00})
bike33.save()
bike34 = Bike.new({'category' => 'Kids', 'type' => 'Mountain', 'brand_name' => 'Ghost', 'model' => 'Kato', 'colour' => 'red/white', 'size' => 'M', 'price' => 200.00})
bike34.save()
bike35 = Bike.new({'category' => 'Kids', 'type' => 'Mountain', 'brand_name' => 'Ghost', 'model' => 'Kato', 'colour' => 'red/black', 'size' => 'M', 'price' => 200.00})
bike35.save()
bike36 = Bike.new({'category' => 'Kids', 'type' => 'Starter', 'brand_name' => 'Isla', 'model' => 'Cnoc', 'colour' => 'green', 'size' => 'M', 'price' => 250.00})
bike36.save()
bike37 = Bike.new({'category' => 'Kids', 'type' => 'Starter', 'brand_name' => 'Isla', 'model' => 'Cnoc', 'colour' => 'green', 'size' => 'S', 'price' => 250.00})
bike37.save()
bike38 = Bike.new({'category' => 'Womens', 'type' => 'BMX', 'brand_name' => 'Stolen', 'model' => 'Casino', 'colour' => 'black', 'size' => 'M', 'price' => 200.00})
bike38.save()
bike39 = Bike.new({'category' => 'Kids', 'type' => 'BMX', 'brand_name' => 'Stolen', 'model' => 'Casino', 'colour' => 'black', 'size' => 'S', 'price' => 125.00})
bike39.save()
bike40 = Bike.new({'category' => 'Mens', 'type' => 'BMX', 'brand_name' => 'Stolen', 'model' => 'Casino', 'colour' => 'black', 'size' => 'L', 'price' => 250.00})
bike40.save()




















