# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: "application#home"
  ActiveAdmin.routes(self)

  if Rails.env.development?
    mount Flipper::UI.app(Flipper), at: "/flipper"
  end
end
