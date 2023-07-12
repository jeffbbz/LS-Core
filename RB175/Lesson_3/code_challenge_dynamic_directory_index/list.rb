require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

get "/" do
  @filelist = Dir.glob("public/*").map { |file| File.basename(file) }.sort
  @filelist.reverse! if params[:sort] == "desc"
  
  erb :list
end