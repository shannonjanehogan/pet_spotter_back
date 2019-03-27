const express = require('express');
const port = 8080;
const database = require('./database/index.js');
var bodyParser = require('body-parser')
const app = express()

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())

// View All Animals by Shelter
app.get('/shelters/:id/animals', async (req, res) => {
  res.set('Access-Control-Allow-Origin', '*');
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
  res.set('Access-Control-Allow-Origin', '*');
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
  res.set('Access-Control-Allow-Origin', '*');
  const params = [req.body.amount, req.body.date, req.body.cPhone, req.body.sPhone];
  const sql = database.readFileHelper('insert_donation', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    const transactionId = result[0].transactionid;
    const nameParams = [req.body.name, req.body.message, transactionId,];
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
  res.set('Access-Control-Allow-Origin', '*');
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
  res.set('Access-Control-Allow-Origin', '*');
  const params = [
    req.body.name,
    req.body.houseNo,
    req.body.street,
    req.body.postalCode,
    req.body.email,
    req.params.id
  ];
  const postalParams = [req.body.city, req.body.province, req.body.postalCode];
  const addressParams = [req.body.houseNo, req.body.street, req.body.postalCode];
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
  res.set('Access-Control-Allow-Origin', '*');
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
  res.set('Access-Control-Allow-Origin', '*');
  const params = ['2018', req.params.id];
  const sql = database.readFileHelper('aggregation_donor', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});

// Nested Aggregation with Group By
app.get('/donations', async (req, res) => {
  res.set('Access-Control-Allow-Origin', '*');
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
  res.set('Access-Control-Allow-Origin', '*');
  const sql = database.readFileHelper('division_donor_donation', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch (err) {
    res.sendStatus(500);
  }
});


app.listen(port, () => console.log(`Example app listening on port ${port}!`));
