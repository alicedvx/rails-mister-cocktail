Rails.application.routes.draw do
  resources :cocktails, only: [:new, :create, :show, :index] do
    resources :doses, only: [:new, :create, :show]
  end
  resources :doses, only: [:destroy]

  root to: 'cocktails#index'
end

# fake comment
