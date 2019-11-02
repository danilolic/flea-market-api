class EventSubject < ApplicationRecord
  belongs_to :event
  belongs_to :subject
end
