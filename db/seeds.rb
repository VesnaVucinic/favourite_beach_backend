# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.destroy_all
Beach.destroy_all

greece = Country.create(name: "Greece")
spain = Country.create(name: "Spain")
portugal = Country.create(name: "Portugal")
france = Country.create(name: "France")

Beach.create(name: "Kassiopi", location: "Corfu", description: "This relatively remote but beloved beach is ideal for those who love diving from the rocks in a pool-like sea.", image_url: "https://iltesorivillas.com/wp-content/uploads/2017/12/rsz_il_tesori_villas_kerkyra-2.jpg", country_id: greece.id)
Beach.create(name: "Vau Calanque D'En", location: "National Park of Calanques", description: "The beach is beautiful, stone, with cliffs on all sides, the sea with a stunning blue color, wonderful for the eyes and for the soul.", image_url: "https://www.turmundial.com/wp-content/uploads/2017/05/DSC_0282.jpg", country_id: france.id)
