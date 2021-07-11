# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "pages#home"

  resources :individuals, only: %i[index show]
end
