# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# array of colors for cards
['clubs', 'diamonds', 'hearts', 'spades'].each do |c|
	CardSuit.find_or_create_by suit: c
end

# array of values
(2..14).each do |v|
	CardValue.find_or_create_by value: v
end