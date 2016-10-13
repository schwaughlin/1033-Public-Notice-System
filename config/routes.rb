Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#index"
  get '/leos' => "static_pages#law_enforcement_index"
  post '/equipment/mark_received' => "equipment#mark_received"
  get '/subscribe_public_notices' => "static_pages#subscribe_public_notices"
  get '/unsubscribe_public_notices' => "static_pages#unsubscribe_public_notices"
  resources :subscriptions
  resources :equipment
  devise_for :users, :controllers => { :registrations => "registrations" }
end
