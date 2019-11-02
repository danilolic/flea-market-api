json.array! @subjects do |subject|
  json.partial! 'subjects/subject', subject: subject
end
