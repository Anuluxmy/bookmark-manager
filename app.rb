require 'sinatra/base'

class Bookmark_Manager < Sinatra::Base

  get '/' do
    "Hello World!"
  end

  get '/bookmarks' do
   'Bookmark Manager'
  end

end
