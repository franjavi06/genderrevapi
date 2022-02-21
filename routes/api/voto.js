const router = require('express').Router();
const { Voto } = require('../../database/db');
const { config } = require('../../config');
const moment = require('moment');
const jwt = require('jwt-simple');

router.get('/', async (req, res) => {
  const votos = await Voto.findAll().catch((err) => {
    console.log(err);
    res.status(500).json({ success: false, data: [], messages: err });
  });
  res.json(votos);
});

router.get('/:votoId', async (req, res) => {
  const voto = await Voto.findOne({
    where: { id: req.params.votoId },
  }).catch((err) => {
    console.log(err);
    res.status(500).json({ success: false, data: [], messages: err });
  });
  res.json(voto);
});

router.post('/', async (req, res) => {
  const voto = await Voto.create(req.body).catch((err) => {
    console.log(err);
    res.status(500).json({ success: false, data: [], messages: err });
  });
  res.json(voto);
});

router.put('/:votoId', async (req, res) => {
  await Voto.update(req.body, { where: { id: req.params.votoId } });
  res.json({ success: 'Se ha modificado' });
});

router.delete('/:votoId', async (req, res) => {
  await Voto.destroy({ where: { id: req.params.votoId } });
  res.json({ success: 'Se ha borrado' });
});

module.exports = router;
