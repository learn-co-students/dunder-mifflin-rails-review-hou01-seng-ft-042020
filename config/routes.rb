Rails.application.routes.draw do
  resources :dogs do
    get :sort, on: :collection
  end
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
