class CreateCourseAssignments < ActiveRecord::Migration
  def change
    create_table :course_assignments do |t|
      t.references :teacher, index: true
      t.references :course, index: true
      t.string :schedule
      t.integer :hours_quantity
      t.date :init_date

      t.timestamps
    end
  end
end
