const express = require("express");
const router = express.Router();

const UserController = require("../controllers/userController");

router.get("/", function(req, res, next) {
  res.render("index", { title: "Express" });
});

router.get("/teste", UserController.agregadoras)

module.exports = router;
