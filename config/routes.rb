Soml::Application.routes.draw do
  get "kpi_values/new"

  get "regions/index"

  resource :scorecard
  resources :kpis
  resources :regions do
    resources :kpi_values
  end
end
