const express = require('express');
const port = 3000;
const database = require('./database/index.js');
var bodyParser = require('body-parser')
const app = express()

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())

app.get('/test', (req, res) => res.send('Hello World!'));

// View All Animals
app.get('/animals', async (req, res) => {
  const result = await database.selectQuery('select_animals');
  res.send(result);
});

// View All Animals by Shelter
app.get('/shelters/:id/animals', async (req, res) => {
  const result = await database.runQuery(
    `SELECT * FROM Animal INNER JOIN Shelter on Shelter.Sphone = Animal.Sphone
    WHERE Shelter.Sphone = 6048324820;`
  );
  res.send(result.rows);
});

// Create new donation
app.post('/donations', async (req, res) => {
  try {
    const result = await database.runQuery(`INSERT INTO Donation
  (TransactionID, Amount, Date, CPhone, SPhone) VALUES (
      '2017-0002',
      ${req.body.amount},
      '2018-01-22',
      (SELECT CPhone FROM Client WHERE CPhone = '7884321987'),
      (SELECT SPhone FROM Shelter WHERE SPhone = '6048324820')
    );`);
    res.send(result);
  } catch {
    res.sendStatus(500);
  }
});

app.delete('/donations/:id', async (req, res) => {
  res.sendStatus(200);
});

// Update
app.put('/client/:id', async (req, res) => {
  res.sendStatus(200);
});

// Join
app.get('/animalpickups', async (req, res) => {
  res.sendStatus(200);
});

// Aggregation
app.get('/donors/:id/taxreceipt', async (req, res) => {
  res.sendStatus(200);
});

// Nested Aggregation with Group By
app.get('/donations', async (req, res) => {
  res.sendStatus(200);
});

// Division
app.get('/donors', async (req, res) => {
  res.sendStatus(200);
});


app.listen(port, () => console.log(`Example app listening on port ${port}!`));
