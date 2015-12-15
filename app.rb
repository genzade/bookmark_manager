require 'sinatra/base'

class BookManager < Sinatra::Base
  get '/' do
    'Hello BookManager!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
