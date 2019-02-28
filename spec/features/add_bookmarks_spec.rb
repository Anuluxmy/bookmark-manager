feature "adding bookmarks" do
  scenario " adds a bookmarks when clicked" do
    visit('/bookmarks')
    fill_in "url", with: "www.marksandspencer.com"
    click_button 'Add'
    expect(page).to have_content("www.marksandspencer.com")

  end
end
