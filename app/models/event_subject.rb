# frozen_string_literal: true

class EventSubject < ApplicationRecord
  belongs_to :event
  belongs_to :subject
end
