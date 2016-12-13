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
  get '/admins/my_ratings' => 'admins#my_ratings'
  get '/admins/all_ratings' => 'admins#all_ratings'
  get '/admins/add_super_admin' => 'admins#add_super_admin'
  patch '/admins/:id/update' => 'admins#update'

  post '/sectors' => 'answers#sector'

  get '/register' => 'users#register'
  post '/user' => 'users#create'
  get '/application/:token' => 'users#show'
end
