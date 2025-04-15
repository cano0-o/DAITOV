Rails.application.routes.draw do
  get "tutors/new"
  get "tutors/create"
  get 'registro', to: 'tutors#new', as: :new_tutor
  post 'registro', to: 'tutors#create'
  
  get 'inicio-sesion', to: 'sessions#new', as: :new_session
  post 'inicio-sesion', to: 'sessions#create', as: :inicio_sesion
  delete 'cerrar-sesion', to: 'sessions#destroy', as: :destroy_session
  
  get 'bienvenido', to: 'welcome#index'
  root 'welcome#index'
end
