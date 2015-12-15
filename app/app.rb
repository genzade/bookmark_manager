require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base
  get '/links' do
    'Hello BookManager!'
    @links = Link.all
    erb(:'links/index')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
