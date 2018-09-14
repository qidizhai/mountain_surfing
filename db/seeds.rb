# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.delete_all
User.delete_all

House.create!(
  description: 'alamo square, many dogs',
  lat: 37.775769,
  lng: -122.434960,
  pic_url: 'https://c2.staticflickr.com/4/3035/2309664044_486f5a0327_z.jpg?zz=1'
)

House.create!(
  description: 'UN plaza, food truck access',
  lat: 37.779760,
  lng: -122.413820,
  pic_url: 'http://www.concretedecor.net/CD/assets/Image/archives/CD1405/1405i_Page_32_Image_0001_600.jpg'
)

House.create!(
  description: 'Ocean Beach, gnarly breh',
  lat: 37.769996,
  lng: -122.511281,
  pic_url: 'https://cdn.trendir.com/wp-content/uploads/old/house-design/wood-and-glass-mountain-house-with-trio-of-terraces-1.jpg'
)
