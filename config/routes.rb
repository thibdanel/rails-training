Rails.application.routes.draw do
  root to: 'pages#home'
  resources :casques do
    resources :reviews, only: [ :new, :create ]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
