const { BorrowedBooks_Table } = require('../models') // path to our required models
const { Borrower_Table } = require('../models') // path to our required models
const nodemailer = require('nodemailer')
const cron = require('node-cron')
const { Op } = require('sequelize')

// Creating a transporter object using SMTP transport
const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: 'hussein.riaz.ahmad@gmail.com',     // my spare email and password
        pass: 'jdwq vcbh ofou vooc'       
    }
});

// Function to send email notification
const sendEmailNotification = (email, book) => {

    // Email options
    const mailOptions = {
        from: 'hussein.riaz.ahmad@gmail.com',                // Sender address
        to: email,                                  // Recipient address
        subject: 'Overdue Book Notice',             // Email subject
        text: `Dear borrower,\n\n` +
              `Your book with ISBN ${book.ISBN} is overdue. Please return it as soon as possible.\n\n` +
              `Thank you,\n Automated Email from: ` +
              `Bibliomania Library Management System`          // Email body
    };

    // Send email
    transporter.sendMail(mailOptions, (error, info) => {
        if (error) {
            console.error('Error sending email:', error);
        } else {
            console.log('Email sent:', info.response);
        }
    });
};

// Function to check for overdue books and send email notifications
const checkOverdueBooksAndNotify = async () => {
    try {

        // Query overdue books from the database
        const overdueBooks = await BorrowedBooks_Table.findAll({
            where: {
                DueDate: {
                    [Op.lt]: new Date() // Finding books where DueDate is less than current date
                }
            }
        });

        // Iterating through overdue books
        for (const book of overdueBooks) {

            // Find corresponding borrower
            const borrower = await Borrower_Table.findOne({
                where: { Username: book.Username }
            });

            // send email notification if borrower and their email exists in our database
            if (borrower && borrower.Email) {
                sendEmailNotification(borrower.Email, book);
            }
        }
    } catch (error) {
        console.error('Error checking overdue books:', error);
    }
};

// To Dry Run the setup:
console.log('Running overdue books check...');
checkOverdueBooksAndNotify();

// Schedule task to check for overdue books and send email notifications every day at midnight
cron.schedule('0 0 * * *', () => {
    console.log('Running overdue books check...');
    checkOverdueBooksAndNotify();
});
