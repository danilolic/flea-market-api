# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = current_user
    render json: @user
  end
end
