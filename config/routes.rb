Rails.application.routes.draw do
  
 
  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about', as: 'about'
  resources :users, only: [:index, :show, :edit, :update] 
  resources :books, only: [:new, :index, :show, :edit, :update, :create, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
