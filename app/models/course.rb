class Course < ActiveRecord::Base
  belongs_to :course_type
  belongs_to :grade
end
