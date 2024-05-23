const fs = require('fs')        // NodeJS way of reading thru File System
const path = require('path')    // To deal with relative and absolute paths
const Sequelize = require('sequelize')      // Sequelize model
const config = require('../config/config')  // the Config file
const db = {}

// Creating a new Sequelize object
const sequelize = new Sequelize(
    config.db.database,
    config.db.user,
    config.db.password,
    config.db.options
)

// So that the tables are converted to model automatically:
fs
    .readdirSync(__dirname)
    // filter out any file that is NOT index.js
    .filter((file) =>
        file !== 'index.js'
    )
    // for each file you discover, make a model
    .forEach((file) => {
        const model = require(path.join(__dirname, file))(sequelize, Sequelize.DataTypes)
        db[model.name] = model
    })

sequelize.authenticate().then(() => {
    console.log('Connection has been established successfully.');
 }).catch((error) => {
    console.error('Unable to connect to the database: ', error);
 });

 db.sequelize = sequelize
 db.Sequelize = Sequelize

 module.exports = db