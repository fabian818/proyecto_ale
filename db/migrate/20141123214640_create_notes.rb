class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :enrollment, index: true
      t.references :note_type, index: true
      t.float :value

      t.timestamps
    end
  end
end
