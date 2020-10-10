var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const cors = require("cors");

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var detailsRouter = require("./routes/details");
var loginRouter = require("./routes/login");
var gameseatsRouter = require("./routes/gameseats");
var detailsRouter = require("./routes/details");
var registerRouter = require("./routes/register");
var goodsbarRouter = require("./routes/goodsbar");
var officecustomRouter = require("./routes/officecustom");
var gametableRouter = require("./routes/gametable");
var carouselRouter = require("./routes/carousel");

var app = express();

app.use(cors({
  origin: [ //允许跨域的客户端源头有哪些
    'http://localhost:8080', //vue脚手架
    "http://127.0.0.1:5500", //live server
    "http://xzvue.applinzi.com" //新浪云上的vue项目
  ],
  credentials: true //要求允许携带cookie
}))

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/index', indexRouter);
app.use('/users', usersRouter);
app.use('/details', detailsRouter);
app.use('/login', loginRouter);
app.use('/gameseats', gameseatsRouter);
app.use('/details', detailsRouter);
app.use('/register', registerRouter);
app.use('/goodsbar', goodsbarRouter);
app.use('/officecustom', officecustomRouter);
app.use('/gametable', gametableRouter);
app.use('/carousel', carouselRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
