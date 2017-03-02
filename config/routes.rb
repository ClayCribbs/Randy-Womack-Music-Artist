Rails.application.routes.draw do
  resources :contents
  resources :style_profiles
  resources :admins
  root 'welcome#index'
  get 'style' => 'style_profiles#index'
  get 'preview' => 'contents#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
