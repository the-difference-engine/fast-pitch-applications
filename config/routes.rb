Rails.application.routes.draw do
  resources :answers
  resources :questions
  devise_for :admins

  get '/' => 'welcome#index'

  get 'ratings/new' => 'ratings#new'
  post 'ratings' => 'ratings#create'

end
