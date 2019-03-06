const { Pool } = require('pg');
const fs = require('fs');

const pool = new Pool({
  connectionString: "postgres://shannonhogan@127.0.0.1:5432/petspotter"
});

pool.on('connect', () => {
  console.log('connected to the db');
});

/**
 * Create Tables
 */
const createTables = () => {
  const queryText = fs.readFileSync('./database/migrations/create_users_table.sql').toString();

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

/**
 * Drop Tables
 */
const dropTables = () => {
  const queryText = 'DROP TABLE IF EXISTS reflections';
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
