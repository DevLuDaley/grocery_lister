Rails.application.routes.draw do
  get 'items/create'
  resources :lists do #creates 7 restful routes.  to view enter 'rake routes' in terminal.
  resources :items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'lists#index'
end
