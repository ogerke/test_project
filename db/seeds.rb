# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Smart.delete_all
Smart.create(
         :name => 'Samsung Galaxy S',
         :descripcion => "The Samsung galaxy S is a smartphone....",
         :image_url => '/images/samsung-galaxy-s-box-small.jpg',
         :price => 210.50
     )
 Smart.create(
         :name => 'Motorola Atrix',
         :descripcion => "Holding the Motorola Atrix is like ....",
         :image_url => '/images/motorola-atrix-box-small.jpg',
         :price => 240.99
  )