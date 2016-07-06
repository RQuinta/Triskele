Rails.application.routes.draw do

  namespace :api, defaults: {format: :json}, constraints: {format: 'json'} do

    resources :users, only: [:create, :update, :show]
    resources :professionals, except: [:new, :edit]
    resources :services, except: [:new, :edit]
    resources :sports, except: [:new, :edit]
    resources :cities, except: [:new, :edit]
    resources :languages, except: [:new, :edit]
    resources :countries, except: [:new, :edit]
    resources :states, except: [:new, :edit]
    resources :countries, except: [:new, :edit]
    resources :appointments, except: [:new, :edit]
    resources :acquisitions, except: [:new, :edit]
    resources :doubts, only: [:create]
    resources :service_changes, only: [:create]
    resources :sessions, except: [:index, :update, :new, :show, :edit]
    
    post '/users/forget_password', to: 'users#forget_password'
    get '/users/show_by_token/:token', to: 'users#show_by_token'
    
  end



end
