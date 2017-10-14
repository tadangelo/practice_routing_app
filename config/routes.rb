Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'
  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'
  root to: 'pages#home'
  get 'query/:else/:another_one', to: 'pages#something'
  get 'query/:else', to: 'pages#something'
    
  resources :posts
  get 'posts/*missing', to: 'posts#missing'
  

  resources :blogs  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
