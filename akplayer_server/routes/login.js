const { log } = require("debug");
const express = require("express");
var router = express.Router();
var pool = require("../pool");
router.post("/", (req, res) => {
    console.log(req.body);
    // console.log(req.query);
    let username = req.body.username
    let password = req.body.password


    var sql = "SELECT * FROM akplayer_user where uname=? and upwd =?";
    pool.query(sql, [username, password], (err, result) => {
        if (err) throw err
        if (!result.length) {
            res.send({ message: 0, result })
        } else {
            res.send({ message: 1, result })
        }
    })
})
module.exports = router;
