# Tests should always run against an empty database. 
# We should set up any required Test data in the test itself. 
# Let's write a script that sets up and clears out the test database each run.

require 'pg'

p "Setting up test database..."

def setup_test_database 
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Clear the bookmarks table
    connection.exec("TRUNCATE bookmarks;")

end