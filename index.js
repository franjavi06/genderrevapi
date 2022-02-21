const express = require('express');
const { config } = require('./config/index');
const apiRouter = require('./routes/api');
const cors = require('cors');
const SocketIO = require('socket.io');

const app = express();
app.use(cors());

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use('/api', apiRouter);

const server = app.listen(config.port, () => {
  console.log('FabriliveApi Is On!');
  console.log(`Listening on http://localhost:${config.port}`);
});

//Websockets
const io = SocketIO(server, {
  cors: {
    origin: '*',
    methods: ['GET', 'POST'],
  },
});

io.on('connection', (socket) => {
  console.log('new connection', socket.id);

  //envio a todos
  /*socket.on('chat:message', (data) => {
        io.sockets.emit('chat:message', data)
    })*/

  //envio a todos menos al que emitio el evento
  /*socket.on('chat:typing', (data) => {
        socket.broadcast.emit('chat:typing', data)
    })*/

  socket.on('cambiarVideo', (data) => {
    socket.broadcast.emit('cambiarVideo', data);
    console.log(data);
  });
});
