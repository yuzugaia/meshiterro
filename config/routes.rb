Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  resources :lists
  root to: "homes#top"
  get 'homes/about' => "homes#about", as: 'about'
end
