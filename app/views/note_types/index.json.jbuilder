json.array!(@note_types) do |note_type|
  json.extract! note_type, :id, :name, :description
  json.url note_type_url(note_type, format: :json)
end
