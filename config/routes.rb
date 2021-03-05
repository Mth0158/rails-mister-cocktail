Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: %i[new create index show] do
    resources :doses, only: %i[new create]
  end

  resources :doses, only: %i[destroy]

  # get '/cocktails/:id/edit', to: 'cocktails#edit', as: :edit_cocktail
  # patch '/cocktails/:id', to: 'cocktails#update'
end
