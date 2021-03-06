# frozen_string_literal: true

class ApplicationController < ActionController::API
  respond_to :json
  before_action :authenticate_user!
end
