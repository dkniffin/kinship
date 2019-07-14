# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "application#home"

  devise_for :users

  ActiveAdmin.routes(self)

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    mount Flipper::UI.app(Flipper), at: "/flipper"
  end

  post "/graphql", to: "graphql#execute"
end
