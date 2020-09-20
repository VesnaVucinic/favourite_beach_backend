#Favourite Beach - Backend API

Favourite Beach is a single page application that displays all types of beaches people would like to visit or have already visited. There is also a small description of what the beach has to offer and an exciting picture!

There are 3 models in this API. The main model is the beach which has a name,location, description, and an image. The beach also belongs_to the second model country. The country model has a name. Also the country has_many beaches. third model is User whow has_many beaches who ca be logged in with JWT.

To get the API running:
Simply fork and clone the repository

1. cd into the favourite_beach_backend directory
2. run rails db:migrate
3. run rails db:seed
4. run rails s
5. open localhost:3000/api/v1/beaches in your browser
Now the API is ready to use. Here you will be able to see all beaches and their cantry they belong.

View the Favourite Beach Frontend:
https://github.com/VesnaVucinic/favourite_beach_frontend_a
© 2020 Favourite Beach