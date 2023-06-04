var database = require("../database/config")

function listar() {
    console.log("ACESSEI O localEstufa MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM localEstufa;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function entrar(numero, fkEmpresa) {
    console.log("ACESSEI O localEstufa MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", numero, fkEmpresa)
    var instrucao = `
        SELECT * FROM localEstufa WHERE numero = '${numero}' AND fkEmpresa = '${fkEmpresa}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrar(nome, rua, cep, numero, andar, complemento, fkEmp) {
    console.log("ACESSEI O localEstufa MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", rua, cep, numero, andar, complemento, fkEmp);
   
    // Insira exatamente a query do banco aqui, lembrando da cepnclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO localEstufa (nome, rua, cep, numero, andar, complemento, fkEmp) VALUES ('${nome}','${rua}', '${cep}', '${numero}', '${andar}', '${complemento}','${fkEmp}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function remover(nome, idEmpresa) {
    console.log("ACESSEI O localEstufa MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome , idEmpresa);
   
    // Insira exatamente a query do banco aqui, lembrando da cepnclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
    DELETE FROM localEstufa WHERE nome = '${nome}' AND fkEmp = '${idEmpresa}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function buscarEstufas(idEmpresa){
    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
       instrucaoSql = `select * from localEstufa WHERE fkEmp = '${idEmpresa}'`;
   } else {
       console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
       return
   }

   console.log("Executando a instrução SQL: \n" + instrucaoSql);
   return database.executar(instrucaoSql);
}

module.exports = {
    entrar,
    cadastrar,
    listar,
    buscarEstufas,
    remover
};