const { Pool } = require('pg');
const fs = require('fs');
require('dotenv').config();

const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

pool.on('connect', () => {
  console.log('connected to the db');
});

/**
Database Access Functions for the Command Line
*/

async function createTables() {
  const createTablesScript = createTablesScriptString();
  runQuery(createTablesScript);
}

async function createSeeds() {
  const seedsScript = createSeedsScriptString();
  runQuery(seedsScript);
}

const dropTables = () => {
  const dropTablesScript = readFileHelper('drop_tables', 'migrations');
  runQuery(dropTablesScript);
}

async function selectQuery(queryFile) {
  const dropTablesScript = readFileHelper(queryFile, 'queries');
  const result = await runQuery(dropTablesScript);
  console.log(result.rows);
  return result.rows;
}

/**
Helper Functions
*/

const runQuery = (queryScript) => {
   return pool.query(queryScript)
     .then((res) => {
       console.log("res");
       console.log(res);
       return res;
       pool.end();
     })
     .catch((err) => {
       console.log("res");
       console.log(err);
       return err;
       pool.end();
     });
 }

 // Returns result of reading the sql file to a string
 const readFileHelper = (fileName, folderName) => {
   return fs.readFileSync(`./database/${folderName}/${fileName}.sql`).toString();
 }

 // Returns a string of all the tables to create, in a specific order so that
 // there are no foreign key constraint errors
 const createTablesScriptString = () => {
   let scripts = "";

   scripts += readFileHelper('create_address_postal_code', 'migrations');
   scripts += readFileHelper('create_address', 'migrations');

   scripts += readFileHelper('create_breed', 'migrations');
   scripts += readFileHelper('create_shelter', 'migrations');
   scripts += readFileHelper('create_client', 'migrations');
   scripts += readFileHelper('create_donor', 'migrations');
   scripts += readFileHelper('create_donation', 'migrations');
   scripts += readFileHelper('create_name_to_credit', 'migrations');
   scripts += readFileHelper('create_potential_owner', 'migrations');

   scripts += readFileHelper('create_animal_pickup', 'migrations');
   scripts += readFileHelper('create_animal', 'migrations');

   scripts += readFileHelper('create_application_approved', 'migrations');
   scripts += readFileHelper('create_application', 'migrations');
   scripts += readFileHelper('create_review', 'migrations');

   return scripts;
 }

 // Returns a string representation of the amalgamated sql scripts to insert seed data
 const createSeedsScriptString = () => {
   let scripts = "";

//    scripts += readFileHelper('insert_address_postal_code', 'seeds');
//    scripts += readFileHelper('insert_address', 'seeds');

//    scripts += readFileHelper('insert_breed', 'seeds');
//    scripts += readFileHelper('insert_shelter', 'seeds');
//    scripts += readFileHelper('insert_client', 'seeds');
   scripts += readFileHelper('insert_donor', 'seeds');
//    scripts += readFileHelper('insert_donation', 'seeds');
//    scripts += readFileHelper('insert_name_to_credit', 'seeds');
//    scripts += readFileHelper('insert_potential_owner', 'seeds');
   
//    scripts += readFileHelper('insert_animal_pickup', 'seeds');
//    scripts += readFileHelper('insert_animal', 'seeds');

//    scripts += readFileHelper('insert_application_approved', 'seeds');
//    scripts += readFileHelper('insert_application', 'seeds');
//    scripts += readFileHelper('insert_review', 'seeds');

   return scripts;
 }

pool.on('remove', () => {
  console.log('client removed');
  process.exit(0);
});

module.exports = {
  createTables,
  dropTables,
  selectQuery,
  createSeeds
};

require('make-runnable');

// // Database connection parameters:
// const config = {
//     host: 'localhost',
//     port: 5432,
//     database: 'petspotter',
//     user: 'shannonhogan'
// };
//
// // Load and initialize pg-promise:
// const pgp = require('pg-promise');
//
// // Create the database instance:
// const database = pgp(config);
//
// // module.exports = database;
//
// const QueryFile = require('pg-promise').QueryFile;
// const path = require('path');
//
// module.exports = {
//     users: {
//         create: sql('migrations/create_users_table.sql'),
//         // empty: sql('users/empty.sql'),
//         // init: sql('users/init.sql'),
//         // drop: sql('users/drop.sql'),
//         // add: sql('users/add.sql')
//     },
// };
//
// ///////////////////////////////////////////////
// // Helper for linking to external query files;
// function sql(file) {
//
//     const fullPath = path.join(__dirname, file); // generating full path;
//
//     const options = {
//
//         // minifying the SQL is always advised;
//         // see also option 'compress' in the API;
//         minify: true,
//
//         // Showing how to use static pre-formatting parameters -
//         // we have variable 'schema' in each SQL (as an example);
//         params: {
//             schema: 'public' // replace ${schema~} with "public"
//         }
//     };
//
//     const qf = new QueryFile(fullPath, options);
//
//     if (qf.error) {
//         // Something is wrong with our query file :(
//         // Testing all files through queries can be cumbersome,
//         // so we also report it here, while loading the module:
//         console.error(qf.error);
//     }
//
//     return qf;
//
//     // See QueryFile API:
//     // http://vitaly-t.github.io/pg-promise/QueryFile.html
// }
