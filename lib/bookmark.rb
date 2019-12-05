require 'pg'

class Bookmark
  def self.all 
    #the if statement below tells the class which db to use when connecting
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      #using pg to connect to prod database
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    #running a query on the connection previously established
    result = connection.exec("SELECT * FROM bookmarks;")
    #assign that to a result variable and map over it to return the urls:
    result.map { |bookmark| bookmark['url'] }
   end 
  end