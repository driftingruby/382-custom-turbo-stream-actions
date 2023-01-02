Rails.application.routes.draw do
  resources :users
  root to: 'welcome#index'
  get 'welcome/index'
  get 'welcome/page1'
  get 'welcome/page2'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
