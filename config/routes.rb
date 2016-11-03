Rails.application.routes.draw do
  resources :users, only: [:create, :show, :update, :destroy] do
    resources :albums, only: [:index, :show, :create, :update, :destroy] do
      resources :photos, only: [:index, :show, :create, :destroy] do
        resources :comments, only: [:index, :create, :destroy]
      end
    end

    collection do
      post '/login', to: 'users#login'
    end
  end
end
