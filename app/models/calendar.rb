# frozen_string_literal: true

class Calendar < ApplicationRecord
  has_many :events, dependent: :destroy
  belongs_to :user
end
