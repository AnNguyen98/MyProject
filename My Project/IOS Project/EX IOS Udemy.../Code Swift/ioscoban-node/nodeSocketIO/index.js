var app = require('express')();
var server = require('http').Server(app);
var io = require('socket.io')(server);

server.listen(2017,function(){
    console.log('dang lang nghe tren port 2017');
});

io.on('connection', function (socket) {
    console.log("co nguoi ket noi")
    socket.on('hello',function(data){
      console.log(data)
    })
});











// var express = require('express')
// var bodyParser = require('body-parser')
//
// var app = express()
//
// // create application/json parser
// var jsonParser = bodyParser.json()
//
// // create application/x-www-form-urlencoded parser
// var urlencodedParser = bodyParser.urlencoded({ extended: false })
// app.listen(2017,function(){
//   console.log('dang lang nghe tren port 2017');
// })
// //http://localhost:2017/hello
// app.post('/hello',urlencodedParser,function (req,res) {
//       var hoten = req.body.ten
//       res.send('xin chao ban:' + hoten)
// })
// app.get('/bien1/:a/bien2/:b', function (req, res) {
//   var a = req.params.a
//   var b = req.params.b
//   a = parseInt(a)
//   b = parseInt(b)
//   if (a > 5 && b > 5){
//       res.send((a+b)+"")
//   }else{
//     res.send((a-b)+"")
//   }
//
// })
