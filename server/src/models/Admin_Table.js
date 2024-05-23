module.exports = (sequelize, DataTypes) =>
    sequelize.define('Admin_Table', {
        Username: {
            type: DataTypes.STRING,
            unique: true
        },
        Name: DataTypes.STRING,
        Age: DataTypes.INTEGER,
        Gender: DataTypes.STRING,
        DatePromoted: DataTypes.DATEONLY
    },
    // Prevent Sequelize from pluralizing the table name
    { freezeTableName: true }
    )