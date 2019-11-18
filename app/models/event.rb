# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :calendar
  has_many :event_subjects, dependent: :destroy
  has_many :subjects, through: :event_subjects
end
