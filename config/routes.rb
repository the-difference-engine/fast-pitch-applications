Rails.application.routes.draw do
  devise_for :applicants
  resources :answers
  resources :questions
  devise_for :admins

  get '/' => 'welcome#index'

  get 'ratings/new' => 'ratings#new'
  post 'ratings' => 'ratings#create'
  get 'ratings/:id' => 'ratings#show'

  get '/admins' => 'admins#index'
  get '/admins/add_super_admin' => 'admins#add_super_admin'
  patch '/admins/:id/update' => 'admins#update'
  get '/admins/view/:id' => 'admins#view'
  put 'admins/archive/:id' => 'admins#archive'


  get '/register' => 'users#register'
  post '/user' => 'users#create'
  get '/application/:token' => 'users#show'
end
