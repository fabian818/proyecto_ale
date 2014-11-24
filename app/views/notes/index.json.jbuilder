json.array!(@notes) do |note|
  json.extract! note, :id, :enrollment_id, :note_type_id, :value
  json.url note_url(note, format: :json)
end
