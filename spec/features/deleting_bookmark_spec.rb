feature "deleting bookmarks" do
    scenario "user can delete a bookmark" do
        Bookmark.create(url: "http://io9.com", title: "io9")
        visit 'bookmarks'
        expect(page).to have_link("io9", href: "http://io9.com")
        first('.bookmark').click_button 'Delete'
        expect(current_path).to eq '/bookmarks'
        expect(page).not_to have_link("io9", href: "http://io9.com")
    end
end