Rails.application.routes.draw do
    get '/' => 'welcome#index'
    resources :books
    resources :authors
    resources :reviews
    resources :users
    get 'signup' => 'users#new'
    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'
    root 'welcome#index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
