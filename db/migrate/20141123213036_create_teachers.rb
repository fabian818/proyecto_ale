class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.references :user, index: true
      t.string :code

      t.timestamps
    end
  end
end
