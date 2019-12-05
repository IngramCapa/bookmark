require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy All Software');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google');")

      bookmarks = Bookmark.all

      expect(bookmarks[0].url).to include('http://www.makersacademy.com')
      end
  end

  describe ".create" do
    it "creates a new bookmark entry" do
      Bookmark.create(url: "https://www.bbcgoodfood.com/", title: "BBC Good Food")

      expect(Bookmark.all[-1].url).to eq 'https://www.bbcgoodfood.com/'
      expect(Bookmark.all[-1].title).to eq 'BBC Good Food'
      p Bookmark.all
    end

  end
end