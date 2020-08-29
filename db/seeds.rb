# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Country.destroy_all
Beach.destroy_all

vesna = User.create(email: "vesna@vesna.com", password: "masha" )

greece = Country.create(name: "Greece")
spain = Country.create(name: "Spain")
france = Country.create(name: "France")
portugal = Country.create(name: "Portugal")
cyprus = Country.create(name: "Cyprus")
italy = Country.create(name: "Italy")
croatia = Country.create(name: "Croatia")
great_britain = Country.create(name: "Great Britain")


Beach.create(name: "Kassiopi", location: "Corfu", description: "This relatively remote but beloved beach is ideal for those who love diving from the rocks in a pool-like sea.", image_url: "https://iltesorivillas.com/wp-content/uploads/2017/12/rsz_il_tesori_villas_kerkyra-2.jpg", country_id: greece.id, user_id:vesna.id )
Beach.create(name: "Vau Calanque D'En", location: "National Park of Calanques", description: "The beach is beautiful, stone, with cliffs on all sides, the sea with a stunning blue color, wonderful for the eyes and for the soul.", image_url: "https://www.turmundial.com/wp-content/uploads/2017/05/DSC_0282.jpg", country_id: france.id, user_id: vesna.id)
Beach.create(name: "Anthony Quinn Bay", location: "Rhodes", description: "The beach at Anthony Quinn bay is one of the most beautiful beaches on Rhodes. The waters owe their deep emerald colour to the lush green vegetation which surrounds the beach.", image_url: "https://i.pinimg.com/originals/96/1f/1e/961f1e45d4e8cc5b9daa2eb46ac06980.jpg", country_id: greece.id, user_id: vesna.id)
Beach.create(name: "Stafilos Beach", location: "Skopelos ", description: " Stafilos is one of the closest beaches to Skopelos Town. Just 5 km away from the capital, the stunning bay is accessible by local bus or private car. A nice fish tavern welcomes the visitors and some wooden steps lead down to the lovely pebbled bay with fine grey sand and crystal clear waters. It is a really beautiful beach that is also listed among the most incredible beaches of Greece.", image_url: "https://www.greeka.com/village_beach/photos/477/stafilos-top-1-1280.jpg", country_id: greece.id, user_id: vesna.id)
Beach.create(name: "Cala Benirras Beach", location: "Ibiza", description: "Benirras Beach delivers the sort of exotic paradise you might expect to have to travel to the other side of the world for. You get there by car, a scenic route through valleys and hills to reach the dazzling fine, white sand and turquoise water. The legendary sunsets are accompanied by a soundtrack of drummers on Sundays.", image_url: "https://www.white-ibiza.com/wp-content/uploads/2020/03/ibiza-beaches-benirras-06.jpg",country_id: spain.id, user_id: vesna.id )
Beach.create(name: "Rabbit Island (Isola dei Conigli)", location: "Sicily", description: "Rocky islet just off Lampedusa has sandy beaches & is an egg-laying spot for loggerhead turtles.", image_url: "https://www.lasicilia.it/resizer/1200/720/true/20151104/image/posteggio__8476900.jpg--lampedusa__frana_su_turisti_costone_dell_isola_dei_conigli__ci_sono_feriti.jpg", country_id: italy.id, user_id: vesna.id )
