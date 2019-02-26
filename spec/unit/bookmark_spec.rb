require './lib/bookmark'

describe Bookmark do

  it 'returns a list of all bookmarks' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end

end
