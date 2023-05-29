var express = require("express");
var router = express.Router();

var localController = require("../controllers/localController");

router.get("/", function (req, res) {
    localController.testar(req, res);
});

router.get("/listar", function (req, res) {
    localController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de localController.js
router.post("/cadastrar", function (req, res) {
    localController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    localController.entrar(req, res);
});

module.exports = router;