const { Pool } = require('pg');
const fs = require('fs');
const dotenv = require('dotenv');

const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

pool.on('connect', () => {
  console.log('connected to the db');
});

// Returns result of reading the sql file to a string
const readFileHelper = (fileName) => {
  return fs.readFileSync(`./database/migrations/${fileName}.sql`).toString();
}

// Returns a list of all the tables to create, in a specific order so that
// there are no foreign key constraint errors
const createScriptList = () => {
  const createAddressPostalCodeText = readFileHelper('create_address_postal_code');
  const createAddressText = readFileHelper('create_address');
  const createAnimalPickupText = readFileHelper('create_animal_pickup');
  const createAnimalText = readFileHelper('create_animal');
  const createApplicationApprovedText = readFileHelper('create_application_approved');
  const createApplicationText = readFileHelper('create_application');
  const createBreedText = readFileHelper('create_breed');
  const createClientText = readFileHelper('create_client');
  const createDonationText = readFileHelper('create_donation');
  const createDonorText = readFileHelper('create_donor');
  const createNameToCreditText = readFileHelper('create_name_to_credit');
  const createPotentialOwnerText = readFileHelper('create_potential_owner');
  const createReviewText = readFileHelper('create_review');
  const createShelterText = readFileHelper('create_shelter');

  return [
    createBreedText,
    createAddressPostalCodeText,
    createAddressText,
    createAnimalPickupText,
    createShelterText,
    createClientText,
    createDonorText,
    createDonationText,
    createNameToCreditText,
    createPotentialOwnerText,
    createReviewText,
    createAnimalText,
    createApplicationApprovedText,
    createApplicationText
  ];
}

/**
 * Create Tables
 */
const createTables = () => {
  const scriptList = createScriptList();
  for (script in scriptList) {
    pool.query(script)
      .then((res) => {
        console.log(res);
        pool.end();
      })
      .catch((err) => {
        console.log(err);
        pool.end();
      });
  }
}

/**
 * Drop Tables
 */
const dropTables = () => {
  const queryText = 'DROP TABLE IF EXISTS Animal';
  pool.query(queryText)
    .then((res) => {
      console.log(res);
      pool.end();
    })
    .catch((err) => {
      console.log(err);
      pool.end();
    });
}

pool.on('remove', () => {
  console.log('client removed');
  process.exit(0);
});

module.exports = {
  createTables,
  dropTables
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
