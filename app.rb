require 'sinatra/base'

class Bookmark_Manager < Sinatra::Base

  get '/' do
    "Hello World!"
  end

  get '/bookmarks' do
    '#1 Test Bookmark'
  end

end
