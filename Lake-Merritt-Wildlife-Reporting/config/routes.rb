Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api do
    root 'welcome#index'
    resources :users do
      resources :posts
      resources :photos
      resources :comments
    end

  end
end
