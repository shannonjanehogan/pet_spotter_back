const express = require('express');
const port = 8080;
const database = require('./database/index.js');
var bodyParser = require('body-parser')
const app = express()

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())

const cors = (req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
  res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
  next();
};

app.use(cors);

// View All Animals by Shelter
app.get('/shelters/:id/animals', async (req, res) => {
  const params = [req.params.id];
  const sql = database.readFileHelper('select_shelter_animals', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

// View All Animals up for adoption
app.get('/animals', async (req, res) => {
  const sql = database.readFileHelper('projection_animal', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

// Create new donation
app.post('/donations', async (req, res) => {
  const params = [req.body.data.amount, req.body.data.date, req.body.data.cPhone, req.body.data.sPhone];
  const sql = database.readFileHelper('insert_donation', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    const transactionId = result[0].transactionid;
    const nameParams = [req.body.data.name, req.body.data.message, transactionId,];
    try {
      const nameToCreditSql = database.readFileHelper('insert_name_to_credit', 'queries');
      const finalResult = await database.runQueryWithParams(nameToCreditSql, nameParams);
      res.send(finalResult);
    } catch (err) {
      res.sendStatus(500);
    }
  } catch (err) {
    res.sendStatus(500);
  }
});

app.delete('/donations/:id', async (req, res) => {
  const params = [req.params.id];
  const sql = database.readFileHelper('delete_donation', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

// Update
app.put('/client/:id', async (req, res) => {
  const params = [
    req.body.data.name,
    req.body.data.houseNo,
    req.body.data.street,
    req.body.data.postalCode,
    req.body.data.email,
    req.params.id
  ];
  const postalParams = [req.body.data.city, req.body.data.province, req.body.data.postalCode];
  const addressParams = [req.body.data.houseNo, req.body.data.street, req.body.data.postalCode];
  const sql = database.readFileHelper('update_client', 'queries');
  const postSQL = database.readFileHelper('insert_address_postal_code', 'queries');
  const addressSQL = database.readFileHelper('insert_address', 'queries');
  await genericQueryAttempter(postSQL, postalParams);
  await genericQueryAttempter(addressSQL, addressParams);
  const result = await genericQueryAttempter(sql, params);
  res.send(result);
});

async function genericQueryAttempter(sql, params) {
  try {
    return await database.runQueryWithParams(sql, params);
  } catch (err) {
    res.sendStatus(500);
  }
}

// Join
app.get('/animalpickups', async (req, res) => {
  const sql = database.readFileHelper('join_animal_animalpickup', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

// Aggregation
app.get('/donors/:id/taxreceipt', async (req, res) => {
  const params = ['2018', req.params.id];
  const sql = database.readFileHelper('aggregation_donor', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

// Simple aggregation
app.get('/donations', async (req, res) => {
  const sql = database.readFileHelper('sumAmount_donation', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

// Division
app.get('/donors', async (req, res) => {
  const sql = database.readFileHelper('division_donor_donation', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

// Nested Aggregation with Group By
app.get('/shelters', async (req, res) => {
  const sql = database.readFileHelper('shelter_nested_aggregation', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
