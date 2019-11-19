Rails.application.routes.draw do
  root "static_pages#home"
  
  devise_for :users
  
  resources :recipes do 
    resources :notes
  end


end
