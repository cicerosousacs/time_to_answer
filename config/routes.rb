Rails.application.routes.draw do
  # get 'admins/index'
  # modo de como fazer uma rota na mão
  # get 'admins/edit/:id', to: 'admins#edit' 
  # resources cria todas as rotas por padrão: [:index, :create, :new. :edit, :show, :update, :destroy]
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id/:subject', to: 'search#subject', as: 'search_subject'
    post 'answer', to: 'answer#question'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index' #dashbord
    resources :admins #Administradores
    resources :subjects # Assuntos e Áreas
    resources :questions # Perguntas
  end
  devise_for :users
  devise_for :admins
  get 'welcome/index'
  get 'inicio', to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'site/welcome#index'
end
