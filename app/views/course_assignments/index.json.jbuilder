json.array!(@course_assignments) do |course_assignment|
  json.extract! course_assignment, :id, :teacher_id, :course_id, :schedule, :hours_quantity, :init_date
  json.url course_assignment_url(course_assignment, format: :json)
end
