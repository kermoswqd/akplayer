const express = require("express");
var router = express.Router();
var pool = require("../pool");

router.get("/", (req, res) => {
  let pid = req.query.id
  let sql = "SELECT * FROM akplayer_index_carousel";
  pool.query(sql,  (err, result) => {
    if (err) throw err
    console.log(result);
    res.send(result);
  })
})
module.exports = router;