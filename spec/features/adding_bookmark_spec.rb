feature "adding new bookmarks" do
    scenario "user can add a bookmark" do
        visit 'bookmarks/new'
        fill_in('url', with: "https://www.bbcgoodfood.com/")
        click_button("Submit")
        expect(page).to have_content "https://www.bbcgoodfood.com/"
    end
end