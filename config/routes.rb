Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :brands
  get 'categories/index'

  get  '/bikes',    to: 'home#bikes'
  get  '/kidsbikes',   to: 'home#kidsbikes'
  get  '/parts',   to: 'home#parts'
  get  '/accessories',   to: 'home#accessories'
  get  '/contact',   to: 'home#contact'
  get  '/aboutus',   to: 'home#aboutus'
  
  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'home/index'
  root 'home#index'
  resources :posts
  get 'posts/index'
  
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
