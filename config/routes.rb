Rails.application.routes.draw do
  # Rutas para las acciones del controlador CommentsController
  resources :comments, only: [:create, :destroy]

  # Rutas para las acciones del controlador FeaturesController
  resources :features, only: [:index, :create, :show] do
    # Agrega la ruta para la acción fetch_earthquake_data del controlador FeaturesController
    get 'fetch_earthquake_data', on: :collection
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
