Rails.application.routes.draw do
  resources :restaurants do
    collection do
      # verb /restaurants/whatever-you-put-after-the-verb
      get :top
    end
  end
  # GET /restaurants/top
#  get 'restaurants/top', to: 'restaurants#top', as: 'top'
end
