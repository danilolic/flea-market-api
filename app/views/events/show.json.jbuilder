json.partial! 'events/event', event: @event

json.subjects @event.subjects do |subject|
  json.partial! 'subjects/subject', subject: subject
end
