const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

class Cliente extends Model { }

Cliente.init({
   id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
   },
   nome: {
      type: DataTypes.STRING(45)
   },
   email: {
      type: DataTypes.STRING(45)
   },
   senha: {
      type: DataTypes.STRING(45)
   },
   endereco: {
      type: DataTypes.STRING(45)
   },
   telefone: {
      type: DataTypes.CHAR(11)
   },
}, {
   sequelize,
   modelName: 'clientes',
   timestamps: false

})

module.exports = Cliente
