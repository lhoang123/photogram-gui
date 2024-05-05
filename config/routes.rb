Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/users", { :controller => "misc", :action => "homepage" })

  get("/users/:username", { :controller => "misc", :action => "homepage" })
end
