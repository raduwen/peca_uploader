PecaUploader::Application.routes.draw do
  get "/download/:id" => 'download#file', as: :download
  root "welcome#index"
  resources :uploads, only: [:new, :create, :destroy]
end
