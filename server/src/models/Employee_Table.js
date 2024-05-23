module.exports = (sequelize, DataTypes) =>
    sequelize.define('Employee_Table', {
        Username: {
            type: DataTypes.STRING,
            unique: true
        },
        Name: DataTypes.STRING,
        Age: DataTypes.INTEGER,
        Gender: DataTypes.STRING,
        DateJoined: DataTypes.DATEONLY,
        LibBranchId: DataTypes.STRING
    },
    // Prevent Sequelize from pluralizing the table name
    { freezeTableName: true }
)