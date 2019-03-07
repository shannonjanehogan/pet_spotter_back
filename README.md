# Pet Spotter Back End

##### Made for University of British Columbia's Computer Science 304 Class (Relational Databases)

#### Steps to run the application

`npm install`

Create a `.env` file for your local database information with the format:

`DATABASE_URL=postgres://user@host:port/databasename`

###### Creating tables in the database:

Run `node ./database/index createTables`

###### Dropping tables in the database:

Run `node ./database/index dropTables`

###### Creating seed files

Should be done under `./database/seeds`

_SCRIPT TO CREATE SEEDS IN PROGRESS, WILL EVENTUALLY LOOK LIKE: _**

Run `node ./database/index createSeeds`

###### Creating query files

Should be done under `./database/queries`
