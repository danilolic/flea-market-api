# frozen_string_literal: true

class Listing < ApplicationRecord
  belongs_to :user

  enum status: %i[sell lend exchange]
end
