Rails.application.routes.draw do
  resources :restaurants do
    collection do
      # verb /restaurants/whatever-you-put-after-the-verb
      get :top
    end
    member do
      # verb /restaurants/:id/whatever-you-put-after-the-verb
      get :chef
    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  # GET /restaurants/top
#  get 'restaurants/top', to: 'restaurants#top', as: 'top'
# get 'restaurants/:id/chef', to: 'restaurants#chef', as: :chef_restaurant
end
# GET /restaurants/:restaurant_id/reviews/new
