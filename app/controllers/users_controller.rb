# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = current_user
    render json: @user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      render json: { result: true, msg: ' The image is sucessfully uploaded!!' }, status: :created
    else
      render json: { result: false, user: @user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar)
  end
end
