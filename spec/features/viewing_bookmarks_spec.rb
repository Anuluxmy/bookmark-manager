
feature 'Viewing the bookmarks' do

  scenario 'can see a list of all bookmarks' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager!'
  end
end

feature "viewing bookmarks in /bookmarks route" do
  scenario "show list of bookmarks" do
    
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")


    visit '/bookmarks'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
