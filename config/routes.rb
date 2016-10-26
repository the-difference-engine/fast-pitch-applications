Rails.application.routes.draw do
  devise_for :admins

  get '/' => 'welcome#index'
  get 'ratings/new' => 'ratings#new'

end
