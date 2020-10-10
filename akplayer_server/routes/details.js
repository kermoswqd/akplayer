const express = require("express");
var router = express.Router();
var pool = require("../pool");

router.get("/", (req, res) => {
  let pid = req.query.id
  let sql = "SELECT * FROM akplayer_product where pid =?";
  pool.query(sql, [pid], (err, result) => {
    if (err) throw err
    res.send(result);
  })
})
module.exports = router;