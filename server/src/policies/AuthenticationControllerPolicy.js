// Username and Password validation using Joi
const Joi = require('joi')

// The following module checks if username is a valid username and if password is alphanumeric and 8-32 characters long.
module.exports = {
    register (req, res, next) {
        const schema = Joi.object ({
            Username: Joi.string()
                .pattern(new RegExp('^[^\\s]{1,100}$'))
                .required(),
            Password: Joi.string()
                .pattern(new RegExp('^[a-zA-Z0-9]{8,32}$'))
                .required() 
        })

        const {error} = schema.validate(req.body)
        
        if(error) {
            switch (error.details[0].context.key) {
                case 'Username':
                    console.log('You must provide a valid username')
                    res.status(400).send({
                        error: 'You must provide a valid username'
                    })
                    break
                case 'Password':
                    console.log('The password provided failed to match the following rules')
                    res.status(400).send({
                        error: `The password provided failed to match the following rules:
                            <br>
                            1. It must contain only alphanumeric characters.
                            <br>
                            2. It must be 8 - 32 characters in length.
                        `
                    })
                    break
                default:
                    console.log(error)
                    res.status(400).send({
                        error: 'Invalid Registration Information'
                    })
            }
        }
        else {
            next()
        }
    }
}