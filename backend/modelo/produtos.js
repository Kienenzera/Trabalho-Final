const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

class Produto extends Model { }

Produto.init({
   id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
   },
   fabricacao: {
      type: DataTypes.DATE
   },

   preco: {
      type: DataTypes.DECIMAL
   },
   nome: {
      type: DataTypes.DECIMAL
   },
   validade: {
      type: DataTypes.DATE
   },
   categoria: {
      type: DataTypes.STRING
   },
   lote: {
      type: DataTypes.DECIMAL
   },
   link_imagem: {
      type: DataTypes.STRING
   },
}, {
   sequelize,
   modelName: 'produtos',
   timestamps: false

})

module.exports = Produto
