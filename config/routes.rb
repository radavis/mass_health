MassHealth::Application.routes.draw do
  resources :town_health_records
  root 'town_health_records#index'
end
