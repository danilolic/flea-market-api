# frozen_string_literal: true

class Listing < ApplicationRecord
  belongs_to :user

  enum status: %i[sell lend exchange]

  validates :title, presence: true
  validates :description, presence: true
  validates :kind, presence: true
  validates :user, presence: true
end
