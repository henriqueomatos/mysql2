const veiculo = require('./src/controller/veiculoController');
const cliente = require('./src/controller/clienteController');
const produto = require('./src/controller/produtoController');

const rotas = {
    '/veiculos': {
        'GET': veiculo.listar,
        'POST': veiculo.cadastrar,
        'PATCH': veiculo.editar,
    },
    '/clientes': {
        'GET': cliente.listar,
        'POST': cliente.cadastrar,
    },
    '/produtos': {
        'GET': produto.listar,
        'POST': produto.cadastrar,
    },
};

module.exports = rotas;