# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# array of colors for cards
['blue', 'green', 'red', 'yellow'].each do |c|
	CardColor.find_or_create_by color: c
end

# array of values
(0..9).to_a.concat(['draw_two','reverse', 'skip', 'wild']).each do |v|
	CardValue.find_or_create_by value: v
end