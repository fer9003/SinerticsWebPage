const express = require('express');
const router = express.Router();

const Producto = require('../models/Productos');
const Contacto = require('../models/Contactos');

/* CONTROLADORES */
const nosotrosController = require('../controllers/nosotrosController');
const homeController = require('../controllers/homeController');
const productosController = require('../controllers/productosController');
const contactoController = require('../controllers/contactoController')
const serviciosController = require('../controllers/serviciosController');

module.exports = function() {

    router.get('/', homeController.homePage);

    router.get('/nosotros', nosotrosController.infoNosotros);

    router.get('/productos', productosController.mostrarProductos);


    router.get('/productos/:id', productosController.mostrarProducto);

    router.get('/contacto', contactoController.enviarContacto);

    //Cuando se llena el formulario
    router.post('/contacto', contactoController.enviarFormulario);


    router.get('/servicios', serviciosController.mostrarServicios)

    return router;
}