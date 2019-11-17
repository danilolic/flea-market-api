# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = current_user
    respond_with @user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      render 'users/show.json', status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar, :ira, :registration_id)
  end
end
