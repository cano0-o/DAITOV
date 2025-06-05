Rails.application.routes.draw do
  get "tutors/new"
  get "tutors/create"
  get 'registro', to: 'tutors#new', as: :new_tutor
  post 'registro', to: 'tutors#create'

  post '/pacientes', to: 'pacientes#create', as: :crear_paciente
  get '/pacientes', to: 'pacientes#index', as: :pacientes
  resources :pacientes, only: [:index, :create], path_names: {
  index: 'buscar'
  }
  resources :pacientes, except: [:new] do
    member do
      get 'edit'
    end
  end
  get 'pacientes/buscar', to: 'pacientes#buscar', as: :buscar_pacientes
  resources :pacientes, only: [:show, :index, :create]
  
  get 'inicio-sesion', to: 'sessions#new', as: :new_session
  post 'inicio-sesion', to: 'sessions#create', as: :inicio_sesion
  delete 'cerrar-sesion', to: 'sessions#destroy', as: :destroy_session
  
  get 'bienvenido', to: 'welcome#index'
  root 'welcome#index'
end
