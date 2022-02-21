const router = require('express').Router();

const apiVotosRouter = require('./api/voto');

router.use('/votos', apiVotosRouter);

module.exports = router;
