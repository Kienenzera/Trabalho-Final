const express = require('express');
const router = express.Router();
const ClienteController = require('../controlador/ControladorClientes');

// Rota para criar um novo cliente
router.post('/clientes', ClienteController.createCliente);

// Rota para obter todos os clientes
router.get('/clientes', ClienteController.getAllClientes);

// Rota para obter um cliente pelo ID
router.get('/clientes/:id', ClienteController.getClienteById);

// Rota para atualizar um cliente
router.put('/clientes/:id', ClienteController.updateCliente);

// Rota para deletar um cliente
router.delete('/clientes/:id', ClienteController.deleteCliente);

// Rota para deletar um cliente
router.delete('/login', ClienteController.login);

module.exports = router;