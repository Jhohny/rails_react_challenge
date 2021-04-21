Rails.application.routes.draw do
  root 'dashboard#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'frequency_chars/index'
      get 'people/index'
      get 'possible_duplicates/index'
    end
  end
end
