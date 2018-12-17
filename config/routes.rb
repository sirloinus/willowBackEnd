Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users, only: [:index, :show, :create, :destroy]
      resources :markers, only: [:index, :show, :create]
      resources :analysed_photos, only: [:index, :show, :create]
    end
  end
end
