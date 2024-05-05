Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/users", { :controller => "misc", :action => "homepage" })

  get("/users/:path_username", { :controller => "users", :action => "show" })
end
