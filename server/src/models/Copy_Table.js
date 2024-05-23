module.exports = (sequelize, DataTypes) =>
    sequelize.define('Copy_Table', {
        ISBN: {
            type: DataTypes.STRING,
            unique: true
        },
        DiffId: DataTypes.STRING,
        LibBranchId: DataTypes.STRING,
    },
    // Prevent Sequelize from pluralizing the table name
    { freezeTableName: true }
)