require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"
require "yaml"

before do
  @users = YAML.load_file("users.yaml")
end

helpers do
  def count_interests
    @users.each_value.with_object([]) do |user_info, arr|
      arr << user_info[:interests]
    end.flatten.size
  end
end

get "/" do
  @title = "User List"
  erb :home
end

get "/users/:user" do
  @user_name = params[:user].capitalize
  @title = "#{@user_name}'s Page"
  
  name = params[:user].to_sym
  
  @email = @users[name][:email]
  @interests = @users[name][:interests]
  @other_users = get_other_users

  erb :user
end

def get_other_users
  @users.select do |key, _|
    key != params[:user].to_sym
  end
end
