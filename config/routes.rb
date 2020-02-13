Rails.application.routes.draw do


   root 'top#index'


   get'users_home'  => 'users#home'

   devise_for :users


   resources :books
   resources :users, only: [:index,:show, :edit, :update]
   resources :top, only: [:index]
   get'about' => 'top#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
