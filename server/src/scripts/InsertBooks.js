const fs = require('fs');
const {sequelize} = require('../models')
const {Book_Table} = require('../models')

// Load and parse the JSON file
const booksData = JSON.parse(fs.readFileSync("C:\\Users\\DELL\\Downloads\\sample2.json", 'utf-8'));

// Transform the Authors field from array to comma-separated string
booksData.forEach(book => {
    if (Array.isArray(book.Authors)) {
        book.Authors = book.Authors.join(', ');
    }
});

// Insert data into the Book_Table
(async () => {
  try {
    // Insert all books
    await Book_Table.bulkCreate(booksData);
    console.log('Data inserted successfully');
  } catch (error) {
    console.error('Error inserting data:', error);
  } finally {
    // Close the database connection
    await sequelize.close();
    console.log('Database connection closed');
  }
})();
