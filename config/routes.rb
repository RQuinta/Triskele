Rails.application.routes.draw do

  namespace :api, defaults: {format: :json}, constraints: {format: 'json'} do

    resources :users, except: [:new, :edit]
    resources :professionals, except: [:new, :edit]
    resources :services, except: [:new, :edit]
    resources :sports, except: [:new, :edit]
    resources :locations, except: [:new, :edit]
    resources :cities, except: [:new, :edit]
    resources :countries, except: [:new, :edit]
    resources :enterprises, except: [:new, :edit]
    resources :states, except: [:new, :edit]
    resources :countries, except: [:new, :edit]
    
  end

end
