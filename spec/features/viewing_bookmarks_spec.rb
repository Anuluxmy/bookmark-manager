feature 'Viewing the bookmarks' do

  scenario 'can see a list of all bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content '#1 Test Bookmark'
  end
  
end
