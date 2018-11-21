# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Knock::Authenticable

  protected

  def authorize_as_admin
    return_unauthorized unless !current_user.nil? && current_user.is_admin?
  end
end
