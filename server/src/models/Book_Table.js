module.exports = (sequelize, DataTypes) =>
    sequelize.define('Book_Table', {
        ISBN: {
            type: DataTypes.STRING,
            unique: true
        },
        Title: DataTypes.STRING,
        Authors: DataTypes.STRING,
        Publisher: DataTypes.STRING,
        Year: DataTypes.INTEGER,
        Language: DataTypes.STRING,
        desc: DataTypes.STRING
    },
    // Prevent Sequelize from pluralizing the table name
    { freezeTableName: true }
)