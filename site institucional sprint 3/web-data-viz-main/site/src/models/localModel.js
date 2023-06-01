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
function cadastrar(rua, cep, numero, andar, complemento, fkEmp) {
    console.log("ACESSEI O localEstufa MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", rua, cep, numero, andar, complemento, fkEmp);
    
    // Insira exatamente a query do banco aqui, lembrando da cepnclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO localEstufa (rua, cep, numero, andar, complemento, fkEmp) VALUES ('${rua}', '${cep}', '${numero}', '${andar}', '${complemento}','${fkEmp}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    entrar,
    cadastrar,
    listar,
};