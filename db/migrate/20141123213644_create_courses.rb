class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :course_type, index: true
      t.references :grade, index: true
      t.string :name
      t.float :credits

      t.timestamps
    end
  end
end
