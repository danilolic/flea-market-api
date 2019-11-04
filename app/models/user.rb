# frozen_string_literal: true

class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  has_many :listings, dependent: :destroy
  has_many :subjects, dependent: :destroy
  has_one :calendar

  after_create :create_calendar

  def create_calendar
    self.calendar = Calendar.create
  end
end
