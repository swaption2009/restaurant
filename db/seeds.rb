# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
plans = [
    ["Small", 1, 10, 20, 5, 10],
    ["Medium", 5, 50, 50, 10, 30],
    ["Large", 10, 100, 50, 50, 50],
]

plans.each do |name, restorans, tables, menu_items, storage, price|
  Plan.find_or_create_by!(name: name, restorans: restorans, tables: tables, menu_items: menu_items, storage: storage, price: price)
end
