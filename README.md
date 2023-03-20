# sentiment-db

This repository contains a simple MySQL database for storing sentiment searches.

## Requirements

- XAMPP or any other MySQL server
- A MySQL client (such as MySQL Workbench, phpMyAdmin, or command line)

## Database Setup

1. Clone this repository to your local machine.
2. Import the `sentiment_searches.sql` file into your MySQL server:
   - Using a MySQL client, create a new database named `sentiment_searches`.
   - Import the `sentiment_searches.sql` file into the `sentiment_searches` database.

## Database Schema

The `sentiment_data` table has the following columns:

- `id`: INT, auto-increment, primary key
- `timestamp`: TIMESTAMP, automatically set to the current timestamp
- `text_searched`: TEXT, the text that was searched
- `sentiment`: ENUM('positive', 'negative', 'neutral'), sentiment result
- `percentage_score`: DECIMAL(5, 2), percentage score of the sentiment

## Usage

To insert a new record into the `sentiment_data` table:

```sql
INSERT INTO sentiment_data (text_searched, sentiment, percentage_score) VALUES ('Your text', 'positive', 85.34);

To query records from the sentiment_data table:

  SELECT * FROM sentiment_data;

To update an existing record:

   UPDATE sentiment_data SET sentiment = 'neutral', percentage_score = 50.00 WHERE id = 1;

To delete a record:    
   DELETE FROM sentiment_data WHERE id = 1;

Contributing
Please feel free to submit issues or pull requests with any improvements or suggestions.

License
This project is licensed under the MIT License.