const express=require('express');
const http=require('http');
const mongoose= require('mongoose');

const app=express();
const port=process.env.PORT || 3000; 

var server=http.createServer(app);

var io=require('socket.io')(server);


//client side ->middleware ->server side

app.use(express.json()); //this works as middleware

const DB="mongodb+srv://akshat:test123@cluster0.gl5tjau.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

io.on('connection',(socket)=>{
    console.log('connected to socket.io');
    socket.on('createRoom',({nickname})=>{
       console.log(nickname);

    });
});
mongoose.connect(DB).then(()=>{
    console.log('connection successful');
}).catch((e)=> {
    console.log(e);
});

server.listen(port, '0.0.0.0', ()=>{
    console.log(`Server Started and running on ${port}`);
});
