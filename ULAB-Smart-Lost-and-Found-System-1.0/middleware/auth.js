function isAuthenticated(req, res, next) {
    if (req.session && req.session.user) {
        return next(); // user is logged in, go ahead
    } else {
        return res.status(401).json({ message: 'Unauthorized. Please log in.' });
    }
}

module.exports = { isAuthenticated };