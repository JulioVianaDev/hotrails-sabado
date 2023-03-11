Rails.application.routes.draw do
  devise_for :users
  get 'feedbacks/index'
  get 'feedbacks/show'
  get 'feedbacks/new'
  get 'feedbacks/edit'
  get 'feedbacks/create'
  get 'feedbacks/update'
  get 'feedbacks/destroy'
  
  resources :posts
  root "pages#home"
end
