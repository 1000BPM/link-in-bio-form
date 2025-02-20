Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "add"})

  post("/add_results", { :controller => "items", :action => "post_new"})
  
end
