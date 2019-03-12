const express = require('express');
const app = express();
const port = 3000;
const database = require('./database/index.js');

app.get('/test', (req, res) => res.send('Hello World!'));

app.get('/animals', async (req, res) => {
  const result = await database.selectQuery('select_animals');
  res.send(result);
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
