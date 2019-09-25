Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes
  get 'about', to: 'recipes#about'
end
