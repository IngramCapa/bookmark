feature "visiting the landing page" do
    scenario "seeing the Bookmark Manager" do
        visit '/'
        expect(page).to have_content "Bookmark Manager"
    end
end
    