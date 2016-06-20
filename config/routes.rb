Rails.application.routes.draw do

  namespace :api, defaults: {format: :json}, constraints: {format: 'json'} do

    resources :users, except: [:new, :edit]
    resources :professionals, except: [:new, :edit]
    resources :services, except: [:new, :edit]
    resources :sports, except: [:new, :edit]
    resources :cities, except: [:new, :edit]
    resources :countries, except: [:new, :edit]
    resources :states, except: [:new, :edit]
    resources :countries, except: [:new, :edit]
    resources :appointments, except: [:new, :edit]
    resources :acquisitions, except: [:new, :edit]
    resources :doubts, only: [:create]
    resources :service_changes, only: [:create]
    resources :sessions, except: [:index, :update, :new, :show, :edit]

  end

end
