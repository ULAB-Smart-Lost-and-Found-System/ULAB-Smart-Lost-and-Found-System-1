const User = require('../models/UserModel');
const bcrypt = require('bcryptjs');

exports.getLogin = (req, res) => {
    res.render('login'); // Render login.ejs
};

exports.postLogin = async (req, res) => {
    const { email, password } = req.body;
    const user = await User.findByEmail(email);

    if (user && bcrypt.compareSync(password, user.password)) {
        req.session.user = user;
        res.send('Login successful');
    } else {
        res.send('Invalid email or password');
    }
};
