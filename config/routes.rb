Rails.application.routes.draw do

  devise_for :users
  root to: "courses#index"

  # Routes for the Weather resource:
  # CREATE
  get "/weathers/new", :controller => "weathers", :action => "new"
  post "/create_weather", :controller => "weathers", :action => "create"

  # READ
  get "/weathers", :controller => "weathers", :action => "index"
  get "/weathers/:id", :controller => "weathers", :action => "show"

  # UPDATE
  get "/weathers/:id/edit", :controller => "weathers", :action => "edit"
  post "/update_weather/:id", :controller => "weathers", :action => "update"

  # DELETE
  get "/delete_weather/:id", :controller => "weathers", :action => "destroy"
  #------------------------------

  # Routes for the Score resource:
  # CREATE
  get "/scores/new", :controller => "scores", :action => "new"
  post "/create_score", :controller => "scores", :action => "create"

  # READ
  get "/scores", :controller => "scores", :action => "index"
  get "/scores/:id", :controller => "scores", :action => "show"

  # UPDATE
  get "/scores/:id/edit", :controller => "scores", :action => "edit"
  post "/update_score/:id", :controller => "scores", :action => "update"

  # DELETE
  get "/delete_score/:id", :controller => "scores", :action => "destroy"
  #------------------------------

  # Routes for the Menu resource:
  # CREATE
  get "/menus/new", :controller => "menus", :action => "new"
  post "/create_menu", :controller => "menus", :action => "create"

  # READ
  get "/menus", :controller => "menus", :action => "index"
  get "/menus/:id", :controller => "menus", :action => "show"

  # UPDATE
  get "/menus/:id/edit", :controller => "menus", :action => "edit"
  post "/update_menu/:id", :controller => "menus", :action => "update"

  # DELETE
  get "/delete_menu/:id", :controller => "menus", :action => "destroy"
  #------------------------------

  # Routes for the Hole resource:
  # CREATE
  get "/holes/new", :controller => "holes", :action => "new"
  post "/create_hole", :controller => "holes", :action => "create"

  # READ
  get "/holes", :controller => "holes", :action => "index"
  get "/holes/:id", :controller => "holes", :action => "show"

  # UPDATE
  get "/holes/:id/edit", :controller => "holes", :action => "edit"
  post "/update_hole/:id", :controller => "holes", :action => "update"

  # DELETE
  get "/delete_hole/:id", :controller => "holes", :action => "destroy"
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get "/courses/new", :controller => "courses", :action => "new"
  post "/create_course", :controller => "courses", :action => "create"

  # READ
  get "/courses", :controller => "courses", :action => "index"
  get "/courses/:id", :controller => "courses", :action => "show"

  # UPDATE
  get "/courses/:id/edit", :controller => "courses", :action => "edit"
  post "/update_course/:id", :controller => "courses", :action => "update"

  # DELETE
  get "/delete_course/:id", :controller => "courses", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
