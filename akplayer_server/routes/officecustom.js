const express = require("express");
var router = express.Router();
var pool = require("../pool");
router.get("/", (req, res) => {
    let cateid = req.query.cateid
    var sql = "SELECT * FROM akplayer_product where cateid=?";
    pool.query(sql, [cateid], (err, result) => {
        res.send(result);
    })
})
module.exports = router;