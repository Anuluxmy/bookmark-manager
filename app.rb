require 'sinatra/base'

require './lib/bookmark'

# a Bookmark. for all the pages are belong to you
class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello World!'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
