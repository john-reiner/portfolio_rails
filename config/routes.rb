Rails.application.routes.draw do
  resources :skills
  resources :educations
  resources :experiences
  resources :links
  resources :technologies
  resources :blogs
  resources :projects
  resources :users
  root 'pages#home'
  get 'blogs/sort/:id', to: 'blogs#sort'
  get 'projects/sort/:id', to: 'projects#sort'
  get 'sessions/new', to: 'sessions#new', as: 'new_login'
  post 'sessions', to: 'sessions#create', as: 'login'
  delete 'sessions', to: 'sessions#destroy', as: "destroy_session"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
