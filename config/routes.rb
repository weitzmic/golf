Rails.application.routes.draw do

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

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

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


  get("/", { :controller => "geocoding", :action => "street_to_coords_form" })

  get("/street_to_coords/new", { :controller => "geocoding", :action => "street_to_coords_form" })
  get("/street_to_coords", { :controller => "geocoding", :action => "street_to_coords" })

  get("/coords_to_weather/new", { :controller => "forecast", :action => "coords_to_weather_form" })
  get("/coords_to_weather", { :controller => "forecast", :action => "coords_to_weather" })

  get("/street_to_weather/new", { :controller => "meteorologist", :action => "street_to_weather_form" })
  get("/street_to_weather", { :controller => "meteorologist", :action => "street_to_weather" })


  # Routes for the Comment resource:
# CREATE
# get "/comments/new", :controller => "comments", :action => "new"
# post "/quick_create_comment", :controller => "comments", :action => "create"
#
# # READ
# get "/comments", :controller => "comments", :action => "index"
# get "/comments/:id", :controller => "comments", :action => "show"
#
# # UPDATE
# get "/comments/:id/edit", :controller => "comments", :action => "edit"
# post "/update_comment/:id", :controller => "comments", :action => "update"
#
# # DELETE
# get "/delete_comment/:id", :controller => "comments", :action => "destroy"
# #------------------------------

# OLD
# Routes for the Like resource:
# CREATE
# get "/my_likes/new", :controller => "likes", :action => "new"
# post "/quick_create_my_like", :controller => "likes", :action => "create"
#
# # READ
# get "/my_likes", :controller => "likes", :action => "index"
# get "/my_like/:id", :controller => "likes", :action => "show"
#
# # UPDATE
# get "/my_likes/:id/edit", :controller => "likes", :action => "edit"
# post "/update_my_like/:id", :controller => "likes", :action => "update"
#
# # DELETE
# get "/quick_delete_my_like/:id", :controller => "likes", :action => "destroy"
#------------------------------
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
