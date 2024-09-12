const { Model, DataTypes} = require('sequelize');
const sequelize = require('../config/database');

class Produto extends Model {}

Produto.init({
id : {
       type:DataTypes.INTEGER,
       primaryKey: true,
       autoIncrement: true
},
Fabricacao: {
   type: DataTypes.DATE
},

 preco: {
    type: DataTypes.DECIMAL
 },
 nome: {
    type: DataTypes.DECIMAL
 },
 Validade: {
    type: DataTypes.DATE
 },
 Categoria: {
    type: DataTypes.STRING
 },
 Lote: {
   type: DataTypes.DECIMAL
},
},{
  sequelize,
  modelName: 'produtos',
  timestamps: false

})

module.exports = Produto
