# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user, only: [:auth]

  def index
    render json: { service: 'auth-api', status: :ok }
  end

  def auth
    render json: { status: :ok, msg: "You are currently Logged-in as #{current_user.username}" }
  end
end
