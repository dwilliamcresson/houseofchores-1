const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const path = require('path');
const PORT = process.env.PORT || 9000;





















app.listen(PORT, function() {
  console.log("Friends listening on PORT: " + PORT);
});