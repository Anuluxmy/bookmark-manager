require 'sinatra/base'

class Bookmark_Manager < Sinatra::Base

  get '/' do
    "Hello World!"
  end

  get '/bookmarks' do
    @bookmarks = [
     'https://duckduckgo.com',
     'https://reddit.com',
     'https://tfl.gov.uk'
   ]
  erb :'bookmarks/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
