#OkFido API

##About OkFido API

The OkFido API is a REST API used to implement the back-end for the OkFido web app. This API allows for flexibility due to the robust relationships between each data model.

##Routes

This API implements the following RESTful routes:
* /login, /register, /users, /users/:id
* /dogs, /dogs/:id
* /favorites, /favorites/:id
* /locations, /locations/:id
* /shelters, /shelters/:id
* /breeds, /breeds/:id
* /colors, /colors/:id

##Relationships
* A user has many dogs through favorites
* A user, dog, and a shelter have one location
* A dog has many breeds, and a breed belongs to many dogs
* A dog has many colors, and a color belongs to many dogs

##Models

Each model has the following attributes

####Dogs
* Name
* Gender
* Date of Birth (DOB)
* Biography
* Size
* Location
* Breeds
* Colors
* Image

####Users
* E-Mail
* Password
* First Name
* Last Name
* Location

####Breeds
* Name

####Colors
* Name

####Location
* City
* State

####Shelters
* Name
* Location

##Data Structure
![okfido_data_structure](https://cloud.githubusercontent.com/assets/13924928/11756939/62f20f5c-a02b-11e5-8ff3-dc1b19bfb203.jpg)

##Where to find the app

Front-End Repository: [Back-End Repo](https://github.com/AkJones2007/okfido-api)

Front-End App: [Front-End App](http://akjones2007.github.io/okfido/)
Back-End App: [Back-End App](https://floating-savannah-7491.herokuapp.com/)
