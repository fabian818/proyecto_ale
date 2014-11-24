json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :user_id, :code
  json.url teacher_url(teacher, format: :json)
end
