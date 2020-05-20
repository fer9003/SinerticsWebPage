const Producto = require('../models/Productos');

exports.mostrarProductos = async(req, res) => {
    const productos = await Producto.findAll()
    res.render('productos', {
        pagina: 'Productos',
        productos
    });
}

exports.mostrarProducto = async(req, res) => {
    const producto = await Producto.findByPk(req.params.id)
    res.render('producto', {
        producto
    });
}