Rails.application.routes.draw do
  root to: "treks#index"
  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Going resource:
  # CREATE
  get "/goings/new", :controller => "goings", :action => "new"
  post "/create_going", :controller => "goings", :action => "create"

  # READ
  get "/goings", :controller => "goings", :action => "index"
  get "/goings/:id", :controller => "goings", :action => "show"

  # UPDATE
  get "/goings/:id/edit", :controller => "goings", :action => "edit"
  post "/update_going/:id", :controller => "goings", :action => "update"

  # DELETE
  get "/delete_going/:id", :controller => "goings", :action => "destroy"
  #------------------------------

  # Routes for the Interested resource:
  # CREATE
  get "/interesteds/new", :controller => "interesteds", :action => "new"
  post "/create_interested", :controller => "interesteds", :action => "create"

  # READ
  get "/interesteds", :controller => "interesteds", :action => "index"
  get "/interesteds/:id", :controller => "interesteds", :action => "show"

  # UPDATE
  get "/interesteds/:id/edit", :controller => "interesteds", :action => "edit"
  post "/update_interested/:id", :controller => "interesteds", :action => "update"

  # DELETE
  get "/delete_interested/:id", :controller => "interesteds", :action => "destroy"
  #------------------------------

  # Routes for the Trek resource:
  # CREATE
  get "/treks/new", :controller => "treks", :action => "new"
  post "/create_trek", :controller => "treks", :action => "create"

  # READ
  get "/treks", :controller => "treks", :action => "index"
  get "/treks/:id", :controller => "treks", :action => "show"

  # UPDATE
  get "/treks/:id/edit", :controller => "treks", :action => "edit"
  post "/update_trek/:id", :controller => "treks", :action => "update"

  # DELETE
  get "/delete_trek/:id", :controller => "treks", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
