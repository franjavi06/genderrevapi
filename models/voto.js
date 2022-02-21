module.exports = (sequelize, type) => {
  return sequelize.define(
    'voto',
    {
      id: {
        type: type.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      nombre: type.STRING,
      voto: type.STRING,
    },
    {
      freezeTableName: true,
    }
  );
};
