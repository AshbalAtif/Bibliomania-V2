module.exports = (sequelize, DataTypes) =>
    sequelize.define('Borrower_Table', {
        Username: {
            type: DataTypes.STRING,
            unique: true
        },
        Name: DataTypes.STRING,
        Age: DataTypes.INTEGER,
        Gender: DataTypes.STRING,
        Email: DataTypes.STRING,
        DateOfMembership: DataTypes.DATEONLY,
        Preferences: DataTypes.STRING
    },
    // Prevent Sequelize from pluralizing the table name
    { freezeTableName: true }
)