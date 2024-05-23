module.exports = {
    port: process.env.PORT || 8081,
    db: {
        database: process.env.DB_NAME || 'bibliomania-db',
        user: process.env.DB_USER || 'root',
        password: process.env.DB_PASS || '',
        
        // I think we keep the password as blank when
        // connecting to a mysql database

        options: {
            dialect: process.env.DIALECT || 'mysql',
            host: process.env.HOST || 'localhost'
        }
    },
    authentication: {
        jwtSecret: process.env.JWT_SECRET || 'secret'
    }
}