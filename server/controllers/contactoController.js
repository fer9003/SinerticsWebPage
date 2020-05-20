const Contacto = require('../models/Contactos');

exports.enviarContacto = (req, res) => {
    res.render('contacto', {
        pagina: 'Contactanos'
    });
}

exports.enviarFormulario = (req, res) => {
    //validar que todos los campos esten llenos
    let { nombre, correo, celular, mensaje } = req.body;

    let errores = [];

    if (!nombre) {
        errores.push({ 'mensaje': 'Agrega tu nombre' })
    }

    if (!correo) {
        errores.push({ 'mensaje': 'Agrega tu correo' })
    }

    if (!celular) {
        errores.push({ 'mensaje': 'Agrega tu celular' })
    }

    if (!mensaje) {
        errores.push({ 'mensaje': 'Agrega tu mensaje' })
    }

    //revisar por errores
    if (errores.length > 0) {
        //muestra la vista con errores
        res.render('contacto', {
            errores,
            nombre,
            correo,
            celular,
            mensaje
        })
    } else {
        //almacena en la bd
        Contacto.create({
                nombre,
                correo,
                celular,
                mensaje
            })
            .then(contacto => res.redirect('/contacto'))
            .catch(error => console.log(error));
    }

}