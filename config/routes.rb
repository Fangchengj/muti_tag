Rails.application.routes.draw do
  resources :articles
  resources :tag_twos
  resources :tag_ones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
