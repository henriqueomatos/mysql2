function listar() {
    let dados = []; // SELECT * FROM tb_veiculos;

    //simulando que estamos buscando dados em um banco de dados
    for (let i = 1; i <= 10; i++) {
        dados.push({
            id: i,
            nome: 'Produto '+i,
            valor: 100.01*3,
            categoria: 'Informática',
        });
    }

    return dados;
}

function cadastrar() {
    return "Cadastrando produto...";
}

module.exports = {
    listar, 
    cadastrar,
};