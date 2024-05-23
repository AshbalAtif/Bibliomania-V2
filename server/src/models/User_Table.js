module.exports = (sequelize, DataTypes) =>
    sequelize.define('User_Table', {
        Username: {
            type: DataTypes.STRING,
            unique: true
        },
        Password: DataTypes.STRING,
        Role: {
            type: DataTypes.ENUM('Admin', 'Employee', 'Borrower'),
            allowNull: false // Ensure Role is required
        }
    },
    // Prevent Sequelize from pluralizing the table name
    { freezeTableName: true }
)