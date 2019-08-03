Rails.application.routes.draw do
  get 'index/show'
  get 'index/new'
  get 'index/edit'
  get 'index/create'
  get 'index/update'
  get 'index/destroy'
  devise_for :users
  # get 'dashbarods/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wages

  root 'wages#index'
end
