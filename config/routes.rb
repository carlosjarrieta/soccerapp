Rails.application.routes.draw do

  get 'commons/load_comercios'
  root 'users/home#index'

  # Service Worker Routes
get '/service-worker.js' => "service_worker#service_worker"
get '/manifest.json' => "service_worker#manifest"




  #RUTAS PARA LOS ADMINISTRADORES

scope module: 'admins' do
  # get 'admins/dashboard', as: 'dashboard'
  resources :canchas
  resources :comercios do
      resources :canchas
  end

end

get '/admin/' => 'admins/dashboard#home', as: 'admin'
post 'admins/dashboard/select_dpto', as: 'admin_select_dpto'



#ruta para los usuarios
  namespace :users do
    resources :home do
    end
    resources :reservas, only: [:index, :destroy ]
  end

  post 'users/home/options', as: 'activities_options'
  post 'users/home/search', as: 'buscar'
  post 'users/home/index', as: 'home'

  post 'users/home/reservar' , as: 'reservar'
  get '/users/acount' => 'users/home#acount', as: 'acount'


#RUTAS DE DEVISE
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }



end
