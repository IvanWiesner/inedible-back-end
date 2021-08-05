class ApplicationController < Sinatra::Base

  # register Sinatra::CrossOrigin
  set :default_content_type, 'application/json'
  
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

  patch "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.update(
      like: params[:like],
      unlike: params[:unlike]
    )
    restaurant.to_json
  end

  post "/reviews" do
    new_review = Review.create(
      comment: params[:comment],
      restaurant_id: params[:restaurant_id],
      user_id: User.ids.sample
    )
    new_review.to_json
  end

end
