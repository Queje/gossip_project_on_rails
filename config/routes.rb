Rails.application.routes.draw do
  resources :gossips
  
  
  get 'welcome/:first_name', to: 'static_pages#welcome', as:'welcome'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
