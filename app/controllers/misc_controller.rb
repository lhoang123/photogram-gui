class MiscController < ApplicationController
  def homepage
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc})

    render({ :template => "misc_templates/home"})
  end
end
