Geraldina::Application.routes.draw do
  root :to => redirect('/urls/new')
  resources :urls, :only => [:show, :new, :create]
end
