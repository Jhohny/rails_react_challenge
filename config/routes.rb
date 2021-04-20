Rails.application.routes.draw do
  root 'dashboard#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'people/index'
    end
  end
end
