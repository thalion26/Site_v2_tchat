require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'dev.db'
)

ActiveRecord::Base.default_timezone = :local

class Tchat < ActiveRecord::Base
end

get "/" do
  @title = "Accueil"
  erb :index
end

get "/banniere" do
  @title = "banniere"
  erb :banniere
end

get "/news" do
  @title = "news"
  erb :news
end

get "/raid" do
  @title = "raid"
  erb :raid
end

get "/les_membres" do
  @title ="les membres"
  erb :les_membres
end

get "/tchat" do
  @title = "Tchat!"
  @tchat = Tchat.all()
  erb :tchat
end

post "/tchat" do
  @tchat = Tchat.new(params[:tchat])
  @tchat.save
  redirect "/tchat"
end

put "/tchat/:id" do
  @tchat = Tchat.find(params[:id])
  @tchat.update_attributes(params[:tchat])
  redirect "/tchat"
end

delete "/tchat/:id" do
  @tchat = Tchat.find(params[:id])
  @tchat.destroy
  redirect "/tchat"
end