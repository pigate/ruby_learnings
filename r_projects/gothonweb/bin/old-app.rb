#most basic Sinatra app
#if cannot load sinatra, just do $gem install instra     in curr dir
require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
  return 'Hello world'
end

#feed it param greeting through url by... 
#http://localhost:8080/hello/?greeting=Hi
#http://localhost:8080/hello/?greeting=I-Love-You
get '/hello/' do
  greeting = params[:greeting] || "Hi There"
  #params is build from the request by Sinatra
  #use params hashmap to set :greeitng
  erb :index, :locals => {"greeting" => greeting}
  #use erb function to render 'index'
  #use params ":greeting" as   local variable "greeting" (in index.erb file)
end
