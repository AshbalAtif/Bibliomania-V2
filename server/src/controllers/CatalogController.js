const { Book_Table } = require('../models');

module.exports = {
    async catalog(req, res) {
        try {
            const books = await Book_Table.findAll();
            res.send(books);
        } catch (error) {
            console.error('Error fetching books:', error);
            res.status(500).send('Internal Server Error');
        }
    }
};