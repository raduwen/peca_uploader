PecaUploader::Application.routes.draw do
  root "welcome#index"
  resources :upload, only: [:new, :create, :destroy]
end
