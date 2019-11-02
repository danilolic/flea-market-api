class Subject < ApplicationRecord
  belongs_to :user
  has_many :event_subjects
  has_many :events, through: :event_subjects
end
