# frozen_string_literal: true

class ApplicationController < ActionController::Base
  respond_to :json
  skip_before_action :verify_authenticity_token

  def home
    flash[:notice] = "You have flash messages in your header!"
    flash[:alert] = "You might want to remove this in application_controller.rb #home!"
    render "shared/home"
  end
end
