class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :user, index: true
      t.string :code

      t.timestamps
    end
  end
end
