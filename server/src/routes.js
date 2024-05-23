// Including Controllers
const AuthenticationController = require('./controllers/AuthenticationController')
const CatalogController = require('./controllers/CatalogController')

// Including Policies
// const AuthenticationControllerPolicy = require('./policies/AuthenticationControllerPolicy')

module.exports = (app) => {
    app.post('/register',
        // which invokes the following express middleware:
        // AuthenticationControllerPolicy.register,
        AuthenticationController.register)

    app.post('/login',
        AuthenticationController.login)

    app.post('/catalog',
        CatalogController.catalog)
}