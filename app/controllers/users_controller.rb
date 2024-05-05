class UsersController < ApplicationController
  def show
  url_username = params.fetch("path_username")

  the_user = User.where({ :username => url_username}).at(0)

    if the_user == nil
      redirect_to ("/users")
    else
    render({ :template => "users_templates/show"})
    end
  end
end 
