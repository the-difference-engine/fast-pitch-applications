Rails.application.routes.draw do
  devise_for :applicants

  get '/answers/continued' => 'answers#continued'
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

  get '/sectors' => 'answers#sectors'
  post '/sector_create' => 'answers#sector_create'
  get '/sectors/:id/edit' => 'answers#edit'
  patch 'sectors/:id/update' => 'answers#update'
  get 'form_closed' => 'answers#form_closed'

  get '/questions_new_closed' => 'questions#new_closed'
  get '/questions_new_open' => 'questions#new_open'

  get '/register' => 'users#register'
  post '/user' => 'users#create'
  get '/application/:token' => 'users#show'
end
