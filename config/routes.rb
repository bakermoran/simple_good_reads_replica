Rails.application.routes.draw do
    get '/' => 'welcome#index'
    resources :books, only: [:index, :show]
    resources :authors, only: [:index, :show]
    resources :users, only: [:index, :show]
    resources :reviews, only: [:show]
    root 'welcome#index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
