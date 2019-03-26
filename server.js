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
  const params = [req.params.id];
  const sql = database.readFileHelper('select_shelter_animals', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    res.send(result);
  } catch {
    res.sendStatus(500);
  }
});

// Create new donation
app.post('/donations', async (req, res) => {
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
    } catch {
      res.sendStatus(500);
    }
  } catch {
    res.sendStatus(500);
  }
});

app.delete('/donations/:id', async (req, res) => {
  const params = [req.params.id];
  const sql = database.readFileHelper('delete_donation', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    res.send(result);
  } catch {
    res.sendStatus(500);
  }
});

// Update
app.put('/client/:id', async (req, res) => {
  const params = [
    req.body.name,
    req.body.housesNo,
    req.body.street,
    req.body.postalCode,
    req.body.email,
    req.params.id
  ];
  // TODO address postal code needs to be inserted
  // TODO then Address needs to be inserted
  // TODO then Client can be updated
  const sql = database.readFileHelper('update_client', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    res.send(result);
  } catch {
    res.sendStatus(500);
  }
});

// Join
app.get('/animalpickups', async (req, res) => {
  const sql = database.readFileHelper('join_animal_animalpickup', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch {
    res.sendStatus(500);
  }
});

// Aggregation
// TODO current year decided by client or server?
app.get('/donors/:id/taxreceipt', async (req, res) => {
  const params = ['2018', req.params.id];
  const sql = database.readFileHelper('aggregation_donor', 'queries');
  try {
    const result = await database.runQueryWithParams(sql, params);
    res.send(result);
  } catch {
    res.sendStatus(500);
  }
});

// Nested Aggregation with Group By
app.get('/donations', async (req, res) => {
  const sql = database.readFileHelper('nested_aggregation_donation', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch {
    res.sendStatus(500);
  }
});

// Division
// TODO: is this correct? We don't need any variables from client?
app.get('/donors', async (req, res) => {
  const sql = database.readFileHelper('division_donor_donation', 'queries');
  try {
    const result = await database.runQuery(sql);
    res.send(result);
  } catch {
    res.sendStatus(500);
  }
});


app.listen(port, () => console.log(`Example app listening on port ${port}!`));
