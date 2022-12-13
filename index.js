//importando a biblioteca interna do node para mexer com a web
//const http = require('http');
//const res = require('express/lib/response');
//const rotas = require('./router');

//importando o express para subtituir a necessidade do "http"
//const express = require('express');
//const app = express();
//app.use(express.json());

const app = require('express')();
app.use(require('express').json());


const req = require('express/lib/request');
const rotas = require('./router');

const servidor = 'localhost';
const porta = '8000';

const veiculoController = require('./src/controller/veiculoController');

app.get('/veiculos', async (req, res) => {
    let dados = await veiculoController.listar();
    res.send(dados);
});

app.get('/veiculos/:id', async (req, res) => {
    let dados = await veiculoController.buscarUm(req.params.id);
    res.send(dados);
});


app.delete('/veiculos/:id', async (req, res) =>{
    await veiculoController.excluir(req.params.id);
    res.send(204);
});

app.post('/veiculos', async (req, res) =>{
    await veiculoController.cadastrar(req.body);
    res.send(201); //created
});

app.put('/veiculos/:id', async (req, res) => {
    await veiculoController.editar(req.body, req.params.id);
    res.send(req.body);
});

app.listen(porta, () => {
    console.log('API rodando no endereço http://localhost:8000')
});

// //funcao que será executada assim que chegar uma requisicao
// async function recepcao(req, res) {

//     //testando se a url acessada foi definida no objeto de rotas criado acima
//     if (undefined == rotas[req.url]) {
//         //caso nao exista a rota, então encerra a request com erro 404
//         res.writeHead(404); //gerando codigo de erro 404
//         return res.end();
//     }

//     if (undefined == rotas[req.url][req.method]) {
//         res.writeHead(405);
//         return res.end();
//     }


//     //finalizando o processo com uma resposta
//     let resultado = await rotas[req.url][req.method]('dados');

//     res.end(JSON.stringify(resultado));
// }

// //levantando o servidor
// http.createServer(recepcao).listen(porta, servidor);



