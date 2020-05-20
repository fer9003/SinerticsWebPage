const Sequelize = require('sequelize');
const db = require('../config/database');

const Contacto = db.define('contacto', {
    nombre: {
        type: Sequelize.STRING
    },
    correo: {
        type: Sequelize.STRING
    },
    celular: {
        type: Sequelize.STRING
    },
    mensaje: {
        type: Sequelize.STRING
    },
});

module.exports = Contacto;