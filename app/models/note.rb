class Note < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :note_type
end
