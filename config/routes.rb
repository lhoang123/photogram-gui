Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/users", { :controller => "misc", :action => "homepage" })
  post("/add_user", { :controller => "users", :action => "create" })
  get("/users/:path_username", { :controller => "users", :action => "show" })

  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_photoID", { :controller => "photos", :action => "show" })
end
