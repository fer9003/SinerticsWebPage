const Sequelize = require('sequelize');

const db = require('../config/database');

const Producto = db.define('producto', {
    nombre: {
        type: Sequelize.STRING
    },
    precio: {
        type: Sequelize.STRING
    },
    imagen: {
        type: Sequelize.STRING
    },
    descripcion: {
        type: Sequelize.STRING
    },
    descripcionlarga: {
        type: Sequelize.STRING
    }

});

module.exports = Producto;