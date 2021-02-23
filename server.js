const express = require("express");
const lambda = require("./app");
const app = express();
const port = 8080;

app.use(express.json());

app.get("/", (req, res) => {
  res.send("Server up and running!");
});

app.post("/", async (req, res) => {
  const output = await lambda.handler(req.body, {});
  res.send(output);
});

app.listen(port, () => {
  console.log("Server listening on port", port);
});
