# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get '/(:locale)', to: 'home#index', as: :home, locale: /en|pt-BR/
  get 'sitemap', to: 'home#index', defaults: { format: :xml }

  devise_for :users, path: 'admin', path_names: {
    sign_in: 'login',
    sign_out: 'logout'
  }, controllers: { sessions: 'admin/sessions' }

  namespace :admin do
    root 'about#index'

    resources :abouts, controller: :about, path: :about, except: %i[new show]
    resources :educations, except: :show
    resources :skills, except: :show
    resources :work_experiences, except: :show
    resource :user, controller: :user, only: %i[edit update]
    resource :reorder, only: :update, controller: :reorder
  end
end
