Rails.application.routes.draw do
  resources :links
  resources :technologies
  resources :blogs
  resources :projects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
