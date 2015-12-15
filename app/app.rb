require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base
  get '/links' do
    'Hello BookManager!'
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(title: params[:title], url: params[:url])
    redirect '/links'
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
