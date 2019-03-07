# Pet Spotter Back End

##### Made for University of British Columbia's Computer Science 304 Class (Relational Databases)

### Working with Postgres

Typing `psql` on the command line should let you access a postgres instance

Then typing `CREATE DATABASE petspotter;` will create a database called petspotter

In the future, typing `psql petspotter` will open that database instance

This was a helpful [resource](https://www.codementor.io/engineerapart/getting-started-with-postgresql-on-mac-osx-are8jcopb) (mac only)

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

*SCRIPT TO CREATE SEEDS IN PROGRESS, WILL EVENTUALLY LOOK LIKE:*

Run `node ./database/index createSeeds`

###### Creating query files

Should be done under `./database/queries`
