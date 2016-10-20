Rails.application.routes.draw do
  devise_for :admins

  get '/' => 'welcome#index'
  
end
