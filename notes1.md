Models
    Beach
        name
        description
        location
        image_url
        country_id
    Country
        name

Associations

    Beach
    belongs_to :country

    Country
    has_many :beaches

Seed Data

    greece = Country.create(name: "Greece")
    spain = Country.create(name: "Spain")
    portugal = Country.create(name: "Portugal")

    Beach.create(name: "Kassiopi", location: "Corfu", description: "This relatively remote but beloved beach is ideal for those who love diving from the rocks in a pool-like sea.", image_url: "https://iltesorivillas.com/wp-content/uploads/2017/12/rsz_il_tesori_villas_kerkyra-2.jpg", country_id: greece.id )

Stretch Goals
    -Authentication + Authorization
        User
            
            email
            password_digest
       
    -Image Upload
    -Build out comments for beaches 
    -user can create Country

Stretch Goals Seed Data
vesna = User.create(email: "vesna@vesna.com", password: "vesnica")
eva = User.create(email: "eva@eva.com", password: "evica")        
