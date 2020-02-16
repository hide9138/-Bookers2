Rails.application.routes.draw do


   root 'top#index'
   get'home/about' => 'top#about' ,as: 'top_about'

   get'users/:id/home' => 'users#home' ,as: 'users_home'


   devise_for :users

   resources :users, only: [:index, :edit, :show,:update]
   	resources :books

   resources :top, only: [:index]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
