json.array!(@courses) do |course|
  json.extract! course, :id, :course_type_id, :grade_id, :name, :credits
  json.url course_url(course, format: :json)
end
