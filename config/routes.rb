# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'signup' },
                     controllers: {
                       sessions: 'sessions',
                       registrations: 'registrations'
                     }
  resources :listings
  resource :user, only: %i[show update] do
    resources :subjects
    resource :calendar, only: :show do
      resources :events
    end
  end
end
