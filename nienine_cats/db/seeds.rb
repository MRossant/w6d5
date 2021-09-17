# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create Cat
Cat.destroy_all
cat_1 = Cat.create!(birth_date: Date.new(2015,8,7), color: 'Red', name: 'Sky', sex: 'F', description: 'Best Cat')
cat_2 = Cat.create!(birth_date: Date.new(2010,8,7), color: 'Yellow', name: 'Furball', sex: 'M', description: 'Fat Cat')
cat_3 = Cat.create!(birth_date: Date.new(2001,8,7), color: 'Brown', name: 'Jeff', sex: 'M', description: 'Wise Cat')
cat_4 = Cat.create!(birth_date: Date.new(2009,8,7), color: 'Grey', name: 'Dio', sex: 'F', description: 'Holy Cat')
cat_5 = Cat.create!(birth_date: Date.new(2012,8,7), color: 'Black', name: 'Mary', sex: 'F', description: 'Cat')
