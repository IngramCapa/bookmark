feature "viewing a list of bookmarks" do
  
  scenario "a user can see all bookmarks" do
    # no longer necessary due to spec_helper
    # connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.destroyallsoftware.com")
    Bookmark.create(url: "http://www.google.com")

    visit '/bookmarks'

    expect(page).to have_content "http://www.makersacademy.com"
  end
end