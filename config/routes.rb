Rails.application.routes.draw do
  resources :memberships
  resources :clients do
    resources :gyms
  end
  resources :gyms do
    resources :clients
  end
end
