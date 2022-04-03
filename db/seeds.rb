%w[すき家 吉野家 松屋].map do |name|
  restaurant = Restaurant.new(
    name: name,
    fee: 100,
    time_required: 10,
  )

  12.times do |i|
    restaurant.foods.build(
      name: "牛丼_#{i}",
      price: 500,
      description: "牛丼_#{i}の説明文です。"
    )
  end

  restaurant.save!
end
