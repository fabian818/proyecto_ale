class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :student, index: true
      t.references :course_assignment, index: true
      t.date :date

      t.timestamps
    end
  end
end
