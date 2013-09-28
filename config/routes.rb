PecaUploader::Application.routes.draw do
  root "welcome#index"
  resources :uploads, only: [:new, :create, :destroy]
end
