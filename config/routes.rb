Rails.application.routes.draw do
  root 'shellscripts#index'
  resources :shellscripts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
