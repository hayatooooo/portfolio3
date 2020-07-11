Rails.application.routes.draw do
  root 'counts#top'
  devise_for :users
  resources :counts
end
