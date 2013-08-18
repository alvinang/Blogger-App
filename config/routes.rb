Blogger::Application.routes.draw do

  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}
  root to: 'articles#index'

  resources :articles do
    resources :comments
  end
  resources :tags
end
