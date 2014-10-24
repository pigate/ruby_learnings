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

get '/hello/' do
  erb :hello_form #returns the hello_form page
end

#post '/hello/' handeller is for receiving forms
#greeting and name are passed as :local params to the erb:index call
post '/hello/' do
  greeting = params[:greeting] || "Hi There"
  name = params[:name] || "Nobody"
  erb :index, :locals => {'greeting' => greeting, 'name' => name}
end
