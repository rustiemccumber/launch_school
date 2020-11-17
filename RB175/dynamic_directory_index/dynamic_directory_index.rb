require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

get "/" do
  @public_files = Dir.glob("public/*").map {|path| File.basename(path)}.sort
  @public_files.reverse! if params[:sort] == "desc"
  
  erb :home

end