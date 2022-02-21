const { Sequelize, DataTypes } = require('sequelize');
const { config } = require('../config/index');

const VotoModel = require('../models/voto');

const sequelize = new Sequelize(
  config.dbName,
  config.dbUser,
  config.dbPassword,
  {
    host: config.dbHost,
    dialect: 'mysql',
  }
);

const Voto = VotoModel(sequelize, DataTypes);

sequelize.sync({ force: false }).then(() => {
  console.log('Tablas Sincronizadas');
});

module.exports = {
  Voto,
};
