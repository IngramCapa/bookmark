require 'pg'

class Bookmark
  def self.all 
    #using pg to connect to database
    connection = PG.connect(dbname: 'bookmark_manager')
    #running a query on the connection previously established
    result = connection.exec("SELECT * FROM bookmarks;")
    #assign that to a result variable and map over it to return the urls:
    result.map { |bookmark| bookmark['url'] }
   end 
  end