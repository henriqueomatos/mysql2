const database = require('../connection/databaseConnection');

async function listar() {
    return await database.executar('SELECT * FROM tb_cliente');
}

function cadastrar() {
    return "Cadastrando cliente...";
}

module.exports = {
    listar, 
    cadastrar,
};