class UsersController < ApplicationController
  def create
   
    a = User.new
    a.username = params.fetch("input_username")
 
    a.save 
 
    redirect_to("/users")
   end 
  
  def show
  url_username = params.fetch("path_username")

  @the_user = User.where({ :username => url_username}).at(0)

    if @the_user == nil
      redirect_to ("/404")
    else
    render({ :template => "users_templates/show"})
    end
  end
end 
