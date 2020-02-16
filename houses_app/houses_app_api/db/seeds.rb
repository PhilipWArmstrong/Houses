# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.create([
    { neighborhood: 'River Bend', name: 'House One' },
    { neighborhood: 'Sienna', name: 'House Two' }
])

Listed.create([
    { listed_price: 200000, sold_price: 195000, house_id: 1 },
    { listed_price: 250000, sold_price: 225000, house_id: 1 },
    { listed_price: 300000, sold_price: 295000, house_id: 1 },
    { listed_price: 200000, sold_price: 195000, house_id: 2 },
    { listed_price: 350000, sold_price: 355000, house_id: 2 },
    { listed_price: 275000, sold_price: 255000, house_id: 2 },
])