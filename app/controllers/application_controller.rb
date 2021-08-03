class ApplicationController < Sinatra::Base
  # register Sinatra::CrossOrigin
  set :default_content_type, 'application/json'
  
  # configure do
  #   enable :cross_origin
  #   set :allow_origin, "*" 
  #   set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
  #   set :expose_headers, ['Content-Type']
  # end

  # options "*" do
  #   response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
  #   response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
  #   200
  # end

  # Add your routes here

  get "/restaurants" do
    restaurants = Restaurant.all
    restaurants.to_json(include:{reviews:{include: :user}})
  end

  get "/restaurants/title" do 
    restaurants_title = Restaurant.all.order(:title)
    restaurants_title.to_json
    end

  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json(include: :reviews)
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

end
