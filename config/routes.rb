Rails.application.routes.draw do
  get 'personal_area/cabinet'
  resources :users
    resources :sessions, only: [:new, :create, :destroy]
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get "login/oauth"
  get "login/signin"
  get "homepage/start"
  get "manifesto/agile"
  get "homepage/homepage"
  get "dictionary/dictionary"
  root "homepage#homepage"
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/welcome/index', to "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # API
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index create show update destroy]
      resources :projects, only: %i[index create show update destroy]
      resources :userproject, only: %i[index create show update destroy]
      resources :tickets, only: %i[index create show update destroy]
      resources :microposts, only: %i[index create show update destroy]
      resources :events, only: %i[index create show update destroy]

    end
  end
end
