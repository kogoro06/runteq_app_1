Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#top'

  get 'terms', to: 'static_pages#terms'
  get 'privacy', to: 'static_pages#privacy'
  get 'contact', to: 'static_pages#contact'
end
