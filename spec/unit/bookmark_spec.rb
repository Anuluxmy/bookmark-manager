describe Bookmark do

  it 'returns a list of all bookmarks' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include 'https://duckduckgo.com'
    expect(bookmarks).to include 'https://tfl.gov.uk'
    expect(bookmarks).to include 'https://reddit.com'
  end

end
