Rails.application.routes.draw do
  get 'comments/create'
  get 'features/index'
  get 'features/create'

  # Rutas para las acciones del controlador CommentsController
  resources :comments, only: [:create, :destroy]

  # Rutas para las acciones del controlador FeaturesController
  resources :features, only: [:index, :create, :show, :update, :destroy]

  # Ruta para la acción fetch_earthquake_data del controlador FeaturesController
  get 'features/fetch_earthquake_data', to: 'features#fetch_earthquake_data'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

