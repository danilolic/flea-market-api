# frozen_string_literal: true

class SubjectsController < ApplicationController
  load_and_authorize_resource
  before_action :set_subject, only: %i[show update destroy]

  # GET /subjects
  def index
    @subjects = current_user.subjects
  end

  # GET /subjects/1
  def show
  end

  # POST /subjects
  def create
    @subject = current_user.subjects.build(subject_params)

    if @subject.save
      render json: @subject, status: :created
    else
      render json: @subject.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subjects/1
  def update
    if @subject.update(subject_params)
      render json: @subject
    else
      render json: @subject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subjects/1
  def destroy
    @subject.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_subject
    @subject = Subject.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def subject_params
    params.require(:subject).permit(:name, :time)
  end
end
