Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tailors do
    resources :comments
  end
end
