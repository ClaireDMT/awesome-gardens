Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: :destroy # No need to nest! If I have the id of the plant, i can delete it
end
