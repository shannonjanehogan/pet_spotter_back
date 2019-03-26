const { Pool } = require("pg");
const fs = require("fs");
require("dotenv").config();

const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

pool.on("connect", () => {
  console.log("connected to the db");
});

/**
Database Access Functions for the Command Line
*/
function createTables() {
  const createTablesScript = createTablesScriptString();
  runQuery(createTablesScript);
}

function createSeeds() {
  const seedsScript = createSeedsScriptString();
  runQuery(seedsScript);
}

const dropTables = () => {
  const dropTablesScript = readFileHelper("drop_tables", "migrations");
  runQuery(dropTablesScript);
};

async function selectQuery(queryFile) {
  const dropTablesScript = readFileHelper(queryFile, "queries");
  const result = await runQuery(dropTablesScript);
  console.log(result.rows);
  return result.rows;
}

/**
Helper Functions
*/
const runQueryWithParams = (queryScript, params) => {
   return pool.query(queryScript, params)
     .then((res) => {
       console.log(res);
       return res.rows;
       pool.end();
     })
     .catch((err) => {
       console.log(err);
       return err;
       pool.end();
     });
 }

const runQuery = (queryScript) => {
   return pool.query(queryScript)
     .then((res) => {
       console.log(res);
       return res.rows;
       pool.end();
     })
     .catch((err) => {
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
   scripts += readFileHelper('create_application', 'migrations');
   scripts += readFileHelper('create_review', 'migrations');

   return scripts;
 }

 // Returns a string representation of the amalgamated sql scripts to insert seed data
 const createSeedsScriptString = () => {
   let scripts = "";

   scripts += readFileHelper('insert_address_postal_code', 'seeds');
   scripts += readFileHelper('insert_address', 'seeds');
   scripts += readFileHelper('insert_breed', 'seeds');
   scripts += readFileHelper('insert_shelter', 'seeds');
   scripts += readFileHelper('insert_client', 'seeds');
   scripts += readFileHelper('insert_donor', 'seeds');
   scripts += readFileHelper('insert_donation', 'seeds');
   scripts += readFileHelper('insert_name_to_credit', 'seeds');
   scripts += readFileHelper('insert_potential_owner', 'seeds');
   scripts += readFileHelper('insert_animal_pickup', 'seeds');
   scripts += readFileHelper('insert_animal', 'seeds');
   scripts += readFileHelper('insert_application', 'seeds');
   scripts += readFileHelper('insert_review', 'seeds');

   return scripts;
 }

// pool.on('remove', () => {
//   console.log('client removed');
//   process.exit(0);
// });

module.exports = {
  createTables,
  dropTables,
  selectQuery,
  createSeeds,
  runQuery,
  runQueryWithParams,
  readFileHelper
};

require("make-runnable");
