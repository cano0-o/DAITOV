Rails.application.routes.draw do
  get 'registro', to: 'therapists#new', as: :new_therapist
  post 'registro', to: 'therapists#create'
  
  get 'inicio-sesion', to: 'sessions#new', as: :new_session
  post 'inicio-sesion', to: 'sessions#create', as: :inicio_sesion
  delete 'cerrar-sesion', to: 'sessions#destroy', as: :destroy_session
  
  get 'bienvenido', to: 'welcome#index'
  root 'welcome#index'
end
