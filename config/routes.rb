Rails.application.routes.draw do
  devise_for :applicants
  resources :answers
  resources :questions
  devise_for :admins, controllers: { registrations: 'admin/registrations' }

  root to: 'welcome#index'

  get 'ratings/new' => 'ratings#new'
  post 'ratings' => 'ratings#create'
  get 'ratings/:id' => 'ratings#show'

  resources :admins, only: %i(index update create new)
  get '/admins/add_super_admin' => 'admins#add_super_admin'
  get '/admins/view/:id' => 'admins#view'
  put 'admins/archive/:id' => 'admins#archive'
  get '/search' => 'admins#search'

  get '/search' => 'admins#search'

  get '/sectors' => 'answers#sectors'
  post '/sector_create' => "answers#sector_create"
  get '/sectors/:id/edit' => "answers#edit"
  patch 'sectors/:id/update' => 'answers#update'


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
