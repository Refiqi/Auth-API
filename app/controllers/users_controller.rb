# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user,   only: [:index, :current, :update]
  before_action :authorize_as_admin,  only: [:destroy]
  before_action :authorize, only: [:update]

  def index
    render json: { status: :ok, msg: 'Logged-in' }
  end

  def current
    current_user.update!(last_login: Time.now)
    render json: current_user
  end

  def create
    user = User.new(user_params)
    render json: { status: :ok, msg: 'User was Created' } if user.save
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: { status: :ok, msg: 'User details have been Updated' }
    end
  end

  def destroy
    user = User.find(params[:id])
    render json: { status: :ok, msg: 'User has been Deleted' } if user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def authorize
    return_unauthorized unless current_user&.can_modify_user?(params[:id])
  end
end
