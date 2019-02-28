require 'sinatra/base'

require './lib/bookmark'

# a Bookmark. for all the pages are belong to you
class Bookmarks < Sinatra::Base

  get '/' do
    'Bookmark Manager!'

  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post '/add_bookmarks' do
    Bookmark.add(params[:url])
    redirect '/bookmarks'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
