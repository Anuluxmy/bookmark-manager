feature 'Viewing the page' do
  scenario 'content of the page' do
    visit ('/')
    expect(page).to have_content 'Bookmark Manager!'
  end
end
