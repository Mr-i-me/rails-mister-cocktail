Rails.application.routes.draw do
  root to: 'pages#index'
  resources :cocktails, only: %i[index new show create] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: :destroy

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
