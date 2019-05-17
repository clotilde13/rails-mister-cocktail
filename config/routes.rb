Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
    get '/doses/delete', to: 'doses#delete', as: 'dose_delete'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
