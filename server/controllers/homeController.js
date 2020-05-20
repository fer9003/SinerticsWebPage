exports.homePage = (req, res) => {
    res.render('index', {
        clase: 'home'
    });
}