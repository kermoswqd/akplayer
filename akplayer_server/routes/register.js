const express = require("express");
var router = express.Router();
var pool = require("../pool");
router.post("/", (req, res) => {
    console.log(req.body);
    let obj = req.body
    let sql = 'insert into akplayer_user set ?'
    pool.query(sql, [obj], (err, result) => {
        if (err) throw err
        console.log(result);
        // res.send()
        if (result.affectedRows != 1) {
            res.send('0')
        } else {
            res.send('1')
        }
    })
})
module.exports = router;