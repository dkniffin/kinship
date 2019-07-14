# frozen_string_literal: true

class ApplicationController < ActionController::Base
  respond_to :json
  protect_from_forgery with: :null_session

  def home
    flash[:notice] = "You have flash messages in your header!"
    flash[:alert] = "You might want to remove this in application_controller.rb #home!"
    render "shared/home"
  end
end
