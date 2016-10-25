class ApplicationController < ActionController::API
  namespace :api do
    root 'welcome#index'
    resources :users do
      resources :posts
      resources :photos
      resources :comments
    end
    # post   'login'   => 'sessions#create'
    # delete 'logout'  => 'sessions#destroy'
    # get    'verify'  => 'sessions#verify_access_token'
  end

end
