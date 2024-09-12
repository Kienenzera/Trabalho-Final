const Cliente = require('../modelo/clientes');

const ClienteController = {
    createCliente: async (req, res) => {
        try {
            const novoCliente = await Cliente.create(req.body);
            res.json(novoCliente);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getAllClientes: async (req, res) => {
        try {
            const Clientes = await Cliente.findAll();
            res.json(Clientes);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getClienteById: async (req, res) => {
        try {
            const Cliente = await Cliente.findByPk(req.params.id);
            if (!Cliente) {
                return res.status(404).send('Cliente não encontrado');
            }
            res.json(Cliente);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    updateCliente: async (req, res) => {
        try {
            const Cliente = await Cliente.findByPk(req.params.id);
            if (!Cliente) {
                return res.status(404).send('Cliente não encontrado');
            }
            await Cliente.update(req.body);
            res.send(' Cliente atualizado com sucesso');
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    deleteCliente: async (req, res) => {
        try {
            const Cliente = await Cliente.findByPk(req.params.id);
            if (!Cliente) {
                return res.status(404).send('Cliente não encontrado');
            }
            await Cliente.destroy();
            res.send('Cliente deletado com sucesso');
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    login: async (req, res) => {
        try {
            const cliente = await Cliente.findByPk(req.params.id);
            if (!cliente) {
                return res.status(404).send('Cliente não encontrado');
            }

            // req.body É SEMPRE OS DADOS DO FRONTEND
            if(cliente.email == req.body.email && cliente.senha == req.body.senha){
                return res.status(200).send('Login feito com sucesso');
            } else {
                return res.status(500).send('Login ou senha incorreto')
            }
            
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    // Implementação das funções de controle de estoque
    // registrarEntrada e registrarSaida
    // ... (a ser implementado)
};

module.exports = ClienteController;