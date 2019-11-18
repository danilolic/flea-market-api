# frozen_string_literal: true

class Listing < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :user

  enum kind: %i[sell lend rent exchange]

  validates :title, presence: true
  validates :description, presence: true
  validates :kind, presence: true
  validates :user, presence: true
end
