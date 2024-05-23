module.exports = (sequelize, DataTypes) =>
    sequelize.define('BorrowedBooks_Table', {
        Username: DataTypes.STRING,
        ISBN: DataTypes.STRING,
        IssuanceDate: DataTypes.DATEONLY,
        DueDate: DataTypes.DATEONLY
    },
    // Prevent Sequelize from pluralizing the table name
    { freezeTableName: true }
)