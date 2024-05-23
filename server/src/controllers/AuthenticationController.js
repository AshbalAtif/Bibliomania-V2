const {User_Table} = require('../models')
const jwt = require('jsonwebtoken')
const config = require('../config/config')

function jwtSignUser (user) {
    const TWO_HOURS = 60 * 60 * 2
    return jwt.sign(user, config.authentication.jwtSecret, {
        expiresIn: TWO_HOURS
    })
}

module.exports = {
    
    // REGISTRATION
    async register (req, res) {
        try {
            const user_table = await User_Table.create(req.body)
            // Sending user_table object to required place
            console.log('Request Body:', req.body); // Add this line
            res.send(user_table.toJSON())
        } catch (err) {
            console.log(err)
            res.status(400).send({
                error: 'This username is already taken!'
            })
        }
    },

    // LOG IN
    async login (req, res) {
        try {
            // Getting username and password
            const {Username, Password} = req.body

            const user_table = await User_Table.findOne({
                where: {
                    Username: Username
                }
            })

            // if that user object is not found:
            if (!user_table) {
                return res.status(403).send({
                    error: 'The login information was incorrect'
                })
            }

            const isPasswordValid = Password === user_table.Password

            if(!isPasswordValid)
            {
                return res.status(403).send({
                    error: 'An error has occurred trying to log in'
                })
            }

            const userJSON = user_table.toJSON()
            res.send({
                user: userJSON,
                token: jwtSignUser(userJSON)
            })

        } catch (err) {
            console.log(err)
            res.status(500).send({
                error: 'An error has occured'
            })
        }
    }
}