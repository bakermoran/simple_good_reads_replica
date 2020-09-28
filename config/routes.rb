Rails.application.routes.draw do
    get '/' => 'welcome#index'
    resources :books
    resources :authors
    resources :users, only: [:index, :show]
    resources :reviews
    root 'welcome#index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
