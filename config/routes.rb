Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :furnitures
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
        resources :users, only: [:index, :show, :create]  do
          resources :rooms
          resources :furnitures
          get '/user_furnitures', to: "furnitures#user_furnitures"
          post '/room_furniture', to: "room_furnitures#create"
          get '/room_furniture/:id', to: "room_furnitures#users_current_room_furniture"
          patch '/room_furniture/:id', to: "room_furnitures#update"
           delete '/room_furniture/:id', to: "room_furnitures#destroy_user_furniture"
        end
      end
    end

end
