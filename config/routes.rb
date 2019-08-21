Rails.application.routes.draw do
  get "homepage/start"
  get "manifesto/agile"
  get "homepage/homepage"
  get "dictionary/dictionary"
  root "homepage#homepage"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/welcome/index', to "welcome#index"
  # API
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index create show update destroy]
      resources :projects, only: %i[index create show update destroy]
      resources :microposts, only: %i[index create show update destroy]
    end
  end
end
