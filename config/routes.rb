Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
    post :add_like
    get :show_likes
  end

  resources :likes
  get '/:id/wall', to: 'users#show', as: :user_wall

  root(to: 'welcome#index')
end
