const { validateLogin, validateSignup } = require('../middlewares/validation');

router.post('/login', validateLogin, authController.postLogin);
router.post('/signup', validateSignup, authController.postSignup);

const express = require('express');
const router = express.Router();
const authController = require('../controllers/authController');

router.get('/login', authController.getLogin);
router.post('/login', authController.postLogin);

module.exports = router;
const { isAuthenticated } = require('../middlewares/auth');

router.get('/dashboard', isAuthenticated, (req, res) => {
    res.send('Welcome to your dashboard!');
});